// mgraphics relatert
mgraphics.init();
mgraphics.relative_coords = 0;
mgraphics.autofill = 0;

var windowSize = [
  this.box.rect[2] - this.box.rect[0],
  this.box.rect[3] - this.box.rect[1],
]; // width height

// Rectangle objektet vårt. Siden den krever så mange variable er det enklere å jobbe med hvis bare lager et JS objekt ut av det.
var rect = {
  rWidth: 0,
  rHeight: 20, // Verdien/value av rectanglen.
  rX: 0, // offset fra venstresiden av UI. Må sette for hver rectangle.
  rY: 0,
  wHeight: 0,
  wWidth: 0,
  body: [], // x y width height
  prevBody: [], // x y width height
  lineWidth: 0.5,
  set updateWindowSize(windowSize) {
    this.wWidth = windowSize[0];
    this.wHeight = windowSize[1];
  },
  get updateRectPosition() {
    this.rY = this.wHeight / 2 - this.rHeight;
    this.rWidth = this.wWidth / 4;
    this.body = new Array(this.rX, this.rY, this.rWidth, this.rHeight);
  },
  set updateRectSize(mouseDelta) {
    this.rHeight = this.prevBody[3] - mouseDelta;
  },
  get paintRectangle() {
    with (mgraphics) {
      set_line_width(this.lineWidth);
      rectangle(this.body);
      set_source_rgba(0.808, 0.898, 0.91, 1.0);
      fill();
    }
  },
  get makeBodyCopy() {
    // vi må lage en "deep copy" av body for å gjøre "updateRectPosition", fordi array's er mutable
    this.prevBody = new Array();
    this.prevBody = JSON.parse(JSON.stringify(this.body));
  },
};

var mouseClickY;
var deltaMouse;

var dictFlag = false;
var dictname = "";
var jarledict = new Dict();

// -------------HOVED FUNKSJONEN!------------------
function paint() {
  paintBackground();
  rect.updateWindowSize = windowSize;
  rect.updateRectPosition;
  rect.paintRectangle;
  paintLine();
  paintRectText();
}

// isteden for å gjøre "mgraphics.noegreier" for hver linje kan vi bare wrappe masse code i "with (mgraphics)".
function paintBackground() {
  with (mgraphics) {
    rectangle(0, 0, windowSize[0], windowSize[1]);
    set_source_rgba(0.2, 0.2, 0.2, 1.0);
    fill();
  }
}

function paintLine() {
  with (mgraphics) {
    set_source_rgba(0.808, 0.898, 0.91, 1.0);
    set_line_width(0.5);
    move_to(0, windowSize[1] / 2);
    line_to(windowSize[0], windowSize[1] / 2);
    stroke();
  }
}

function paintRectText() {
  with (mgraphics) {
    move_to(20, 20);
    set_source_rgba(0.808, 0.898, 0.91, 1.0);
    set_font_size(20);
    show_text(rect.body[3].toString());
  }
}

// ----------- EVENT HANDLERS ------------------
function onclick(x, y) {
  mouseClickY = y;
  rect.makeBodyCopy; // vi lager en kopi av firkanten her, sånn at vi kan legge til musdelta når vi drar med musa.
}

function ondrag(x, y) {
  deltaMouse = y - mouseClickY; // musdelta
  rect.updateRectSize = deltaMouse;
  mgraphics.redraw(); // Re-draw mgraphics (egentlig kaller bare paint() funksjonen på ny.)
  dictUpdate(); // oppdater dicten vår.
}

function onresize(x, y) {
  windowSize = [
    this.box.rect[2] - this.box.rect[0],
    this.box.rect[3] - this.box.rect[1],
  ]; // width height
  rect.updateWindowSize = windowSize;
  mgraphics.redraw();
}

// --------------- DICT GREIER ------------------
function dictUpdate() {
  if (dictFlag) {
    jarledict.replace(dictname + "::rect1::body", rect.body);
    jarledict.replace(dictname + "::mouse delta", deltaMouse);
    return;
  }
}

function getdictionary(name) {
  dictname = name;
  jarledict = new Dict(dictname);
  jarledict.set(dictname);
  jarledict.replace(dictname + "::mouse delta");
  jarledict.replace(dictname + "::rect1");
  dictFlag = !dictFlag;
  dictUpdate();
}
