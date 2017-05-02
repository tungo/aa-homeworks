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

function Elephant(name, height, tricks) {
  this.name = name;
  this.height = height;
  this.tricks = tricks;
}
