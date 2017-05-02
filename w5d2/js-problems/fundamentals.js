
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
