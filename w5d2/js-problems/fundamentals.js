
function madLib(verb, adjective, noun) {
  let verbUp = verb.toUpperCase();
  let adjUp = adjective.toUpperCase();
  let nounUp = noun.toUpperCase();

  return `We shall ${verbUp} the ${adjUp} ${nounUp}`;
}

// console.log(madLib('make', 'best', 'guac'));

function isSubstring(searchString, subString) {
  return searchString.includes(subString);
}

// console.log(isSubstring("time to program", "time"));
// console.log(isSubstring("Jump for joy", "joys"));

function fizzBuzz(array) {
  let result = [];

  for (var i = 0; i < array.length; i++) {
    if ((array[i] % 3 === 0 || array[i] % 5 === 0) && array[i] % 15 !== 0) {
      result.push(array[i]);
    }
  }

  return result;
}

// console.log(fizzBuzz([1, 3, 5, 9, 10, 15, 30, 31, 35]));
