// generate list of random offset values using different methods.

autowatch = 1;
inlets = 1;
outlets = 2;

// 0 for positive and negative values. 1 for only positive values.
var positive_only = 0;
declareattribute("positive_only");

function getOffsets(parts, min, max) {
  /* 
    Get random offset values (#1) within a specified range (#2 and #3). The values can be positive or negative.

    Outputs a list.

    Arguments:
    #1 - amount of offsets
    #2 - minimum range
    #3 - maximum range
  */

  var parts = parts;
  var min = min;
  var max = max;
  if (!parts) parts = 4;
  if (!min) min = 0;
  if (!max) max = 200;

  var result = [];
  for (var i = 0; i < parts; i++) {
    // generate random number within a range
    var number = Math.round(Math.random() * (max - min)) + min;
    // decide if its -1 or 1 (positive or negative) — respect `positive_only`
    var verdict = positive_only ? 1 : (Math.round(Math.random()) ? 1 : -1);
    result.push(number * verdict);
  }
  outlet(0, result);
}

function getDist(parts, minGap, maxGap, offsetCeiling) {
  /* 
    Get a distribution of offset values (#1) where consecutive values are within a minGap and maxGap range (#2 and #3) from each other. The values are unique every time and can are both positive and negative, in miliseconds, deviating from a starting point at zero.

    Arguments:
    #1 - parts - (int) amount of offset values
    #2 - minGap - (ms) minimum gap between consecutive offset values
    #3 - maxGap - (ms) maximim gap between consecutive offset values (includes gap between negative and positive)
    #4 - offsetCeiling- (ms) the max amount the offset values can deviate from 0.
  */

  var result = [];

  // find and add other postive numbers that fulfill the various requirments
  while (result.length < parts) {
    var candidate = random(0, maxGap);
    // outlet(1, "new candidate: " + candidate);

    // check minGap constraint
    if (Math.abs(candidate - result[result.length - 1]) < minGap) {
      // outlet(1, "minGap not fulfilled, trying new candidate");
      continue;
    }

    // check maxGap constraint
    // also facotor inn the possibility of one number being negative and the other being positive.
    if (Math.abs(candidate - result[result.length - 1]) > maxGap || candidate + result[result.length - 1] > maxGap) {
      // outlet(1, "maxGap not fulfilled, trying new candidate");
      continue;
    }

    // exceeding offsetCeiling
    if (candidate + result[result.length - 1] > offsetCeiling) {
      // outlet(1, "offsetCeiling not fulfilled, trying new candidate");
      continue;
    }

    // outlet(1, "all requirements fulfilled, adding to result!");
    // outlet(1, "-----------------------------");
    result.push(candidate);
  }

  // randomlly decide if the offsets are ahead or behind the beat.
  var resultFinal = result.map(function (a) {
    // get either 1 or -1, the "verdict" — respect `positive_only`
    var verdict = positive_only ? 1 : (Math.round(Math.random()) ? 1 : -1);
    return a * verdict;
  });

  outlet(0, resultFinal);
}

function random(min, max) {
  // get a random number within a set range
  var number = Math.round(Math.random() * (max - min));
  // offset to account for min number again
  return number + min;
}

function getPartition(parts, minGap, maxGap, offsetSum) {
  /* 
    Get an restricted partition of offset values where the sum of all the values always is equal a specified offset sum. The values are unique every time and are both positive and negative, in miliseconds deviating from a starting point at zero.

    It's also possible to specify the minimum and maximum variance between the offset values, i.e the gap between the numbers. F.ex with the message "getPartition 4 10 150 200", you get 4 invididual offset values that together add up to 200ms, whose consecutive values are a minimum of 10ms apart and a of maximum 150ms apart.

    Arguments:
    #1 - parts - (int) amount of offset values
    #2 - minGap - (ms) minimum gap between consecutive offset values
    #3 - maxGap - (ms) maximim gap between consecutive offset values (includes gap between negative and positive)
    #4 - offsetSum - (ms) the sum total of offsets
  */

  if (!parts) parts = 4;
  if (typeof minGap === "undefined" || minGap === null) minGap = 0;
  if (typeof maxGap === "undefined" || maxGap === null) maxGap = offsetSum;
  if (typeof offsetSum === "undefined" || offsetSum === null) offsetSum = 200;

  var partition = findSignedPartition(parts, minGap, maxGap, offsetSum);

  if (!partition)
    return error(
      "Sorry, a valid partition with these particular parameters is not possible.. Try again."
    );

  // Try to shuffle the partition (preserving min/max gap rules) for variety
  var partitionShuffled = tryShufflePartition(partition, minGap, maxGap, 200);
  outlet(0, partitionShuffled);
}

function findSignedPartition(parts, minGap, maxGap, offsetSum) {
  var result = null;

  function signedGap(a, b) {
    return a * b < 0 ? Math.abs(a) + Math.abs(b) : Math.abs(a - b);
  }

  function dfs(index, remainingAbsSum, prev, path) {
    if (result !== null) return;
    if (index === parts) {
      if (remainingAbsSum === 0) {
        result = path.slice();
      }
      return;
    }

    var remainingParts = parts - index;
    var maxAbs = offsetSum;
    var candidateMin = 0;
    var candidateMax = remainingAbsSum;

    if (remainingParts === 1) {
      candidateMin = candidateMax = remainingAbsSum;
    }

    var absCandidates = [];
    for (var absVal = candidateMin; absVal <= candidateMax; absVal++) {
      absCandidates.push(absVal);
    }
    shuffleArray(absCandidates);

    for (var ai = 0; ai < absCandidates.length; ai++) {
      var absVal = absCandidates[ai];
      var signs = positive_only ? [1] : [1, -1];

      for (var si = 0; si < signs.length; si++) {
        var signed = absVal * signs[si];
        if (index > 0) {
          var gap = signedGap(prev, signed);
          if (gap < minGap || gap > maxGap) continue;
        }

        path.push(signed);
        dfs(index + 1, remainingAbsSum - absVal, signed, path);
        path.pop();
        if (result !== null) return;
      }
    }
  }

  dfs(0, offsetSum, 0, []);
  return result;
}

function tryShufflePartition(arr, minGap, maxGap, attempts) {
  // attempt random swaps that preserve consecutive gap constraints
  if (!attempts) attempts = 100;
  var out = arr.slice();

  function gapOK(a, b) {
    if (a * b < 0) return Math.abs(a) + Math.abs(b) <= maxGap && Math.abs(a) + Math.abs(b) >= minGap;
    var g = Math.abs(a - b);
    return g <= maxGap && g >= minGap;
  }

  for (var t = 0; t < attempts; t++) {
    var i = Math.floor(Math.random() * out.length);
    var j = Math.floor(Math.random() * out.length);
    if (i === j) continue;

    // swap and validate local neighborhoods
    var tmp = out[i]; out[i] = out[j]; out[j] = tmp;

    var ok = true;
    for (var k = 0; k < out.length - 1; k++) {
      if (!gapOK(out[k], out[k + 1])) { ok = false; break; }
    }

    if (!ok) {
      // revert
      tmp = out[i]; out[i] = out[j]; out[j] = tmp;
    }
  }

  return out;
}

function shuffleArray(arr) {
  // Fisher-Yates shuffle (ES5-safe)
  for (var i = arr.length - 1; i > 0; i--) {
    var j = Math.floor(Math.random() * (i + 1));
    var temp = arr[i];
    arr[i] = arr[j];
    arr[j] = temp;
  }
}
