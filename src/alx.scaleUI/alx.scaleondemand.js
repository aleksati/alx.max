// Make the patching window Zoom automatically adjust according to the window size.
// by Aleksander Tidemann

autowatch = 1;
inlets = 1;
outlets = 1;

var loadSize = new Array();

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
  //var pPatcher = this.patcher;
  loadSize = pPatcher.wind.size;
}

// this function is only banged when the current window size has changed
function bang() {
  var pPatcher = getParentPatcher();
  //var pPatcher = this.patcher;
  var currentSize = pPatcher.wind.size;

  var zoomX = currentSize[0] / loadSize[0];
  var zoomY = currentSize[1] / loadSize[1];

  //use the the lowest zoom value, since we are using the zoomer
  if (zoomX < zoomY) {
    var finalZoom = zoomX;
  } else {
    var finalZoom = zoomY;
  }

  // zoom the window
  pPatcher.message("zoomfactor", finalZoom);
  pPatcher.wind.scrollto(0, 0);
}
