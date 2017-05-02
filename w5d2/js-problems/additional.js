function titleize(array, callback) {
  let result = array.map((el) => {
    return `Mx. ${el} Jingleheimer Schmidt`;
  });

  return callback(result);
}

function printCallback(array) {
  array.forEach(el => console.log(el));
}

// titleize(["Mary", "Brian", "Leo"], printCallback);
