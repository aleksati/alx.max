// Make the patching window Zoom automatically adjust according to the window size.
// by Aleksander Tidemann
autowatch = 1;
inlets = 1;
outlets = 1;

var updateRate = 25; // default refresh rate
var prevSize = new Array();
var loadSize = new Array();
var tsk = new Task(mytask, this);

// get the window size of the parent patcher (owner)
function getParentPatcher() {
  var prev = 0;
  var owner = this.patcher.box;

  // traverse to toplevel patcher.
  while (owner) {
    prev = owner;
    owner = owner.patcher.box;
  }

  // return the most top-level patcher object
  return prev.patcher;
}

function setWindowSize() {
  var pPatcher = getParentPatcher();
  loadSize = pPatcher.wind.size;
}

// initialize the loop
function start() {
  prevSize = new Array(-1, -1);
  tsk.cancel();
  tsk.interval = updateRate;
  tsk.repeat();
}

function stop() {
  tsk.cancel();
}

function mytask() {
  var pPatcher = getParentPatcher();
  var currSize = pPatcher.wind.size;

  //Process only if the current window size has changed!
  if (currSize[0] != prevSize[0] || currSize[1] != prevSize[1]) {
    var zoomX = currSize[0] / loadSize[0];
    var zoomY = currSize[1] / loadSize[1];

    //use the the lowest zoom value, since we are using the zoomer
    if (zoomX < zoomY) {
      var finalZoom = zoomX;
    } else {
      var finalZoom = zoomY;
    }

    // zoom the window
    pPatcher.message("zoomfactor", finalZoom);
    pPatcher.wind.scrollto(0, 0);

    // increment previous size.
    prevSize = currSize;
  }
}

// When we update the refreshrate.
function refreshRate(numb) {
  stop();
  updateRate = numb;
}
