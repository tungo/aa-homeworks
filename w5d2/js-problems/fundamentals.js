
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

  for (let i = 0; i < array.length; i++) {
    if ((array[i] % 3 === 0 || array[i] % 5 === 0) && array[i] % 15 !== 0) {
      result.push(array[i]);
    }
  }

  return result;
}

// console.log(fizzBuzz([1, 3, 5, 9, 10, 15, 30, 31, 35]));

function isPrime(number) {
  for (let i = 2; i < Math.floor(Math.sqrt(number)); i++) {
    if (number % i === 0) {
      return false;
    }
  }

  return true;
}

// console.log(isPrime(2));
// console.log(isPrime(10));
// console.log(isPrime(15485863));
// console.log(isPrime(3548563));
