// Generate unique K-restricted integer partitions on demand.

// autowatch = 1;
inlets = 1;
outlets = 2;

// 0 for positive and negative values. 1 for only positive values.
var positive_only = 0;
declareattribute("positive_only");

function getPartition(partitionSum, parts, minGap, maxGap) {
  /* 
    Generate unique K-restricted integer partitions on demand (list of ints). Designed for offsetting beat onsets and micro-rhythms in groove research, but it can be used for anything. Each integer partition is randomized, and it is possible to specify the minimum and maximum gap between consecutive values in the output result that make up the partition (#3 and #4). By default, the integers are both positive and negative, but you can set it to positive values only (@positive_only 1).

    For example, with the message "getPartition 200 4 10 150", you get 4 individual offset values that together add up to 200ms, with consecutive values a minimum of 10ms apart and a maximum of 150ms apart.

    Arguments:
    #1 - partitionSum - (int) the number being partitioned (the sum of the parts added together)
    #2 - parts - (int) the amount of integers the partition should consist of
    #3 - minGap - (float) minimum variance between consecutive parts in the partition
    #4 - maxGap - (float) maximim variance between consecutive parts in the partition
  */

  if (!parts) parts = 4;
  if (typeof minGap === "undefined" || minGap === null) minGap = 0;
  if (typeof maxGap === "undefined" || maxGap === null) maxGap = partitionSum;
  if (typeof partitionSum === "undefined" || partitionSum === null) partitionSum = 200;

  var partition = findSignedPartition(parts, minGap, maxGap, partitionSum);

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
