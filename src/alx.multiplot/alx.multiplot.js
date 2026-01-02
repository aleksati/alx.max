// A modified version of:
// plot.js -- a simplified and customizable version of the plot~ object in Max 6
// timothy place -- cycling '74


var vector = new Array();			// a 2D vector of data to plot
var lrgest_vec_len = 0;
var domain = [1.0, 4.0];
var domain_style = "linear";		// linear or log
var range = [0.0, 100.0];
var origin = [0.0, 0.0];			// the base-line for the domain and range
var	color = new Array();	        // plot color
var data_fontsize = 10.0;
var relative_x = 0;

var data_thickness = 3;             // line width
var symbol = "dot";				    // data point: none, circle, square, etc.
var lines = "linear";				// style: none, linear, curve, origin
var number = "above";				// style: none, above, below, center

var grid_x = new Array();
var grid_y = new Array(0, 25, 50, 75, 100);
var labels_x = new Array();
var labels_y = new Array();
var label_fontsize = 10.0;
var label_font_offset = 30.0;
var grid_shrink = 60;
var label_grid_offset;
var title_x = "Merry X-mas";
var title_y = "Y are we here?";
var title_fontsize = 14.0;

declareattribute("data_fontsize");
declareattribute("label_fontsize");
declareattribute("title_fontsize");
//declareattribute("grid_x");
declareattribute("grid_y");
declareattribute("symbol");
declareattribute("lines");
declareattribute("number");
//declareattribute("color");
declareattribute("data_thickness");
//declareattribute("domain");
declareattribute("relative_x");
declareattribute("labels_x");
declareattribute("labels_y");
declareattribute("title_x");
declareattribute("title_y");
declareattribute("label_font_offset");
declareattribute("grid_shrink");
//declareattribute("inputs", "getattr_inputs_obj", "setattr_inputs_obj", 1);


mgraphics.init();
mgraphics.autofill = 0;
mgraphics.relative_coords = 0;


// add data to be plotted. It's possible to add color in same list. Else, a random color will be assigned.
function list() {
    inn_vec = arrayfromargs(arguments);

    if (inn_vec.indexOf("color") != -1) {
        var vector_data = inn_vec.slice(0, inn_vec.indexOf("color"));
        var color_data = inn_vec.slice(inn_vec.indexOf("color")+1, inn_vec.length);
    } else {
        var vector_data = inn_vec;
        var color_data = new Array(Math.random(), Math.random(), Math.random(), 1);
    }
    if (!vector_data.some(isNaN)) {
        // store the largest vector length for the grid painting.
        if (vector_data.length > lrgest_vec_len) {
            lrgest_vec_len = vector_data.length;
            
            // set the x_grid
            grid_x = new Array();
            for (var y=0; y<=lrgest_vec_len; y++) {
                grid_x.push(y);
            }

            // set a new x domain range.
            domain = new Array(1, lrgest_vec_len);
        }

        vector.push(vector_data);
        color.push(color_data);

    } else {
        error("Numbers only, please.");
    }
}


// Scale an input from a specifc range, to another range. 
// From input in inlow, inhigh, convert to output in outlow, outhigh. 
function myscale(input, inlow, inhigh, outlow, outhigh) {
	var indiff = inhigh - inlow;
	var outdiff = outhigh - outlow;
	var inscale;
	var value;
	
	if (input == Number.NEGATIVE_INFINITY) {
	 	input = inlow * 1000000.0;
    } else if (input == Number.POSITIVE_INFINITY) {
	 	input = inhigh * 1000000.0;
    }    
	if (indiff != 0.0) {
		inscale = 1.0 / indiff;
    } else {
        inscale = 1.0;
    }
	value = (input - inlow) * inscale;
	return (value * outdiff) + outlow;
}


// calculates where "index" is in "width", based on the vector_length.
function calculate_x(index, width, vector_length) {  
    // we can choose to have all data entries "stretch" the whole x-distance, or be relative so some lines are shorter than others. 
    var	numpoints;
    if (relative_x == 0) {
        numpoints = vector_length;
    } else if (relative_x == 1){
        numpoints = lrgest_vec_len;
    }

	var	pointspan = width / lrgest_vec_len; //was originally "width / numpoints"
	var	x;
	var	x_c;
	
	if (domain_style == "log") {
		var highest_index = numpoints;
		var log_highest_index = log(highest_index);
		var log_index = log(index+1); // can't do log(0)
		
		x = log_index / (log_highest_index);
	}
	else {
		x = (index) / (numpoints-1);
	}
	x_c = (x * (width - pointspan/2) + pointspan/4);
	return x_c;
}


function paint_grid() {
    // set a grid-offset if we have labels to paint.
    if (!labels_x.length && !labels_y.length) {
        label_grid_offset = 0;
    } else {
        label_grid_offset = grid_shrink;
    }

	var width = (this.box.rect[2] - this.box.rect[0])-label_grid_offset;
	var height = (this.box.rect[3] - this.box.rect[1])-label_grid_offset;

    mgraphics.set_line_width(0.5);
    
    // draw x_grid lines
	var size = grid_x.length;
	for (var m=1; m<size; m++) {
		var f = grid_x[m];		
        var norm = myscale(f, domain[0], domain[1], 0, lrgest_vec_len-1);
        var x = calculate_x(norm, width, lrgest_vec_len);
		
		with (mgraphics) {
			if (x == origin[0])
				set_source_rgba(0.0, 0.0, 0.0, 1.0);
			else
				set_source_rgba(0.5, 0.5, 0.5, 1.0);

			move_to(x+label_grid_offset, 0);
			line_to(x+label_grid_offset, height);
            stroke();
            
            // draw x_labels
            if (labels_x.length) {
                if (m<=labels_x.length) {
                    move_to(x+label_grid_offset, height+(label_font_offset-15));
                    set_source_rgb(0.2, 0.2, 0.2);
                    select_font_face("Verdana", "normal", "normal");
                    set_font_size(label_fontsize);
                    label_x_str = labels_x[m-1].toString();
                    show_text(label_x_str);
                }
            }
		}
	}
    
    // draw y_grid lines
	var size = grid_y.length;
	var x = calculate_x(0, width, lrgest_vec_len);
	var width = calculate_x(lrgest_vec_len-1, width, lrgest_vec_len);
	for (var m=0; m<size; m++) {
		var f = grid_y[m];		
		var y = myscale(f, range[0], range[1], height, 0);
		
		with (mgraphics) {
			if (y == origin[1])
				set_source_rgba(0.0, 0.0, 0.0, 1.0);
			else
                set_source_rgba(0.5, 0.5, 0.5, 1.0);

			move_to(x+label_grid_offset, y);
			line_to(width+label_grid_offset, y);
            stroke();
            
            // draw y_labels.
            if (labels_y.length) {
                // we don't label the "top" y-grid instance, which is 0. we do that with X.
                if (m != 0) {
                    if (m<labels_y.length) {
                        move_to(x+label_grid_offset-label_font_offset, y);
                        set_source_rgb(0.2, 0.2, 0.2);
                        select_font_face("Verdana", "normal", "normal");
                        set_font_size(label_fontsize);
                        label_y_str = labels_y[m-1].toString();
                        show_text(label_y_str);
                    }
                }
            }
        }
    }
    
    // draw title names.
    with (mgraphics) {
        if (labels_x.length) {
            if (typeof title_x === "string") {
                move_to((label_grid_offset+(width/2))-35, (height+(label_font_offset-15)+(label_font_offset)));
                set_source_rgb(0.2, 0.2, 0.2);
                select_font_face("Verdana", "normal", "normal");
                set_font_size(title_fontsize);
                show_text(title_x);
            }
        }
        if (labels_y.length) {
            if (typeof title_y === "string") {
                move_to(label_grid_offset-label_font_offset, (height/2)+35);
                set_source_rgb(0.2, 0.2, 0.2);
                select_font_face("Verdana", "normal", "normal");
                set_font_size(title_fontsize);
                rotate(0-(Math.PI/2));
                show_text(title_y);
                rotate(Math.PI/2);
            }
        }
    }        
}


function paint_data() {
	var width = (this.box.rect[2] - this.box.rect[0]) - label_grid_offset;
    var height = (this.box.rect[3] - this.box.rect[1]) - label_grid_offset;
    
    // for every data entry we have in the list.
    for (var x=0; x<vector.length; x++) {
	    var	i = 0;
	    var	m;
	    var stride_data = 1;	// stride is normally one, unless the data is thinned and we want to make larger steps through the vector
	    var vecsize = vector[x].length;
    
	    // Draw the lines
	    if (lines != "none") {
	    	with (mgraphics) {
	    		set_source_rgba(color[x]);
	    		set_line_width(data_thickness);
            
	    		for (m=0; m < vecsize; m += stride_data) {
	    			var y1 = myscale(vector[x][m], range[0], range[1], height, 0);
	    			var x_c1 = calculate_x(i, width, vecsize);
	    			var y_c1 = y1;
                
	    			i += stride_data;
                
	    			if (isNaN(y1))
	    				continue;
	    			if (y1 == Infinity)
	    				continue;

	    			if (lines == "origin") {
	    				move_to(x_c1+label_grid_offset, myscale(origin[1], range[0], range[1], height, 0));
	    				line_to(x_c1+label_grid_offset, y_c1);
	    				stroke();
	    			}
	    			else if (lines == "linear") {
	    				if (i == 1)
	    					move_to(x_c1+label_grid_offset, y_c1);
	    				else {
	    					set_line_cap("round");
	    					set_line_join("round");
	    					line_to(x_c1+label_grid_offset, y_c1);
	    				}
	    			}
	    			else if (lines == "curve") {
	    				var pointspan = calculate_x(i, width, vecsize) - calculate_x(i-1, width, vecsize);
	    				var k;
                    
	    				for (k=0; k<pointspan; k++) {
	    					var a;
	    					var b = vector[x][i-1];
	    					var c;
	    					var d;
	    					var y_interp;
	    					var c_minus_b;
	    					var frac = k/pointspan;
                        
	    					if (i == 1) {
	    						if (k == 0) {
	    							move_to(x_c1+label_grid_offset, y_c1);
	    							continue;
	    						}
	    						c = vector[x][i];
	    						d = vector[x][i+1];
	    						a = b - c;
	    					}
	    					else if (i == vecsize){
	    						if (k == 0) {
	    							a = vector[x][i-2];
	    							c = b + (b-a);
	    							d = c + (c-b);
	    						}
	    						else {
	    							break;
	    						}
	    					}
	    					else if (i == vecsize-1){
	    						a = vector[x][i-2];
	    						c = vector[x][i];
	    						d = c + (c-b);
	    					}
	    					else {
	    						a = vector[x][i-2];
	    						c = vector[x][i];
	    						d = vector[x][i+1];
	    					}
	    					c_minus_b = c-b;
	    					y_interp = b + frac * (c_minus_b - 0.1666667 * (1.0 - frac) * ((d - a - (3.0 * c_minus_b)) * frac + (d + (2.0 * a) - (3.0 * b))));
                        
	    					set_line_cap("round");
	    					set_line_join("round");
	    					line_to(x_c1+k+label_grid_offset, myscale(y_interp, range[0], range[1], height, 0));
	    				}
	    			}				
	    		}
            
	    		if (lines == "linear" || lines == "curve")
	    			stroke();
	    	}
	    }
    
	    // Draw the points	
	    if (symbol != "none") {
	    	i = 0;
	    	for (m=0; m < vecsize; m += stride_data) {
	    		var x_c2 = calculate_x(i, width, vecsize);
	    		var y2 = myscale(vector[x][m], range[0], range[1], height, 0);
	    		var y_c2 = y2;
	    		var radius = data_thickness * 1.5;
            
	    		i += stride_data;
            
	    		with (mgraphics) {
	    			set_source_rgba(color[x]);
	    			set_line_width(data_thickness);				
                
	    			if (isNaN(y2))
	    				continue;
                
	    			if (symbol == "circle") {
	    				set_source_rgba(1.0, 1.0, 1.0, 1.0);
	    				ellipse((x_c2+label_grid_offset) - radius, y_c2 - radius, radius * 2.0, radius * 2.0);
	    				fill();
                    
	    				set_source_rgba(color[x]);
	    				ellipse((x_c2+label_grid_offset) - radius, y_c2 - radius, radius * 2.0, radius * 2.0);
	    				stroke();
	    			}
	    			else if (symbol == "dot") {
	    				set_source_rgba(color[x]);
	    				ellipse((x_c2+label_grid_offset) - data_thickness*2.0, y_c2 - data_thickness*2.0, data_thickness * 4.0, data_thickness * 4.0);
	    				fill();					
	    			}
	    			else if (symbol == "square") {
	    				set_source_rgba(1.0, 1.0, 1.0, 1.0);
	    				rectangle((x_c2+label_grid_offset) - radius, y_c2 - radius, radius * 2.0, radius * 2.0);
	    				fill();
                    
	    				set_source_rgba(color[x]);
	    				rectangle((x_c2+label_grid_offset) - radius, y_c2 - radius, radius * 2.0, radius * 2.0);
	    				stroke();
	    			}
	    		}
	    	}
	    }
    
	    // Draw the Numbers
	    if (number != "none") {
	    	i = 0;
	    	for (m=0; m < vecsize; m += stride_data) {
	    		var x_c3 = calculate_x(i, width, vecsize);
	    		var y3 = myscale(vector[x][m], range[0], range[1], height, 0);
	    		var y_c3 = y3;
	    		var str;
            
	    		i += stride_data;
            
	    		with (mgraphics) {
	    			//set_source_rgba(0.5, 0.5, 0.5, 1);
	    			//set_line_width(data_thickness);				
                
	    			if (isNaN(y3))
	    				continue;
                
	    			if (number == "above") {
	    				move_to((x_c3+label_grid_offset) - 10.0, y_c3 - 11.0);
	    			}
	    			else if (number == "below") {
	    				move_to((x_c3+label_grid_offset) - 10.0, y_c3 + 19.0);
	    			}
	    			else if (number == "center") {
	    				move_to((x_c3+label_grid_offset) - 10.0, y_c3 + 4.0);
	    			}

	    			set_source_rgb(0.2, 0.2, 0.2);
	    			select_font_face("Verdana", "normal", "normal");
                    set_font_size(data_fontsize);
	    			str = (Math.round(vector[x][m] * 10) / 10).toString();
	    			show_text(str);
	    		}
	    	}
        }
    }
}

// This is "main" function.
function paint() {
    paint_grid();
    paint_data();
}


function bang() {
	mgraphics.redraw();
}


function getdictionary(dict_name) {
    var plot_dict = new Dict(dict_name);
    plot_dict.set(dict_name);
    for (var i=0; i<vector.length; i++) {
        plot_dict.replace(dict_name+"::pattern_instance"+(i+1), vector[i]);
    }
}


function clear_all_data() {
    lrgest_vec_len = 0;
    vector = new Array();
    color = new Array();
    grid_x = new Array();
    grid_y = new Array(0, 25, 50, 75, 100);
    labels_x = new Array();
    labels_y = new Array();
    label_grid_offset = 60;
    mgraphics.redraw();
}


function clear_data() {
    vector = new Array();
    color = new Array();
    mgraphics.redraw();
}