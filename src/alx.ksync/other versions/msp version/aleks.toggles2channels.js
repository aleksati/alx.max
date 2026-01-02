// Assign toggle values (list) to unique channel numbers.
autowatch = 1;
outlets = 2;
inlets = 1;

function resetToggles(myList) {
  for (var i = 0; i < myList.length; i++) {
    // output toggles value with a designated channel number
    if (i === 0) {
      outlet(0, 0);
      continue;
    }
    outlet(1, i, 0);
  }
}

function list() {
  var myList = arrayfromargs(arguments);

  // if the primary phasor is off, we reset all other osc
  if (myList[0] === 0) {
    resetToggles(myList);
    return;
  }

  for (var i = 0; i < myList.length; i++) {
    // output toggles value with a designated channel number
    if (i === 0) {
      outlet(0, myList[i]);
      continue;
    }
    outlet(1, i, myList[i]);
  }
}
