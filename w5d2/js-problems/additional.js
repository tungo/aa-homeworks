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

Elephant.prototype.trumpet = function () {
  console.log(`${this.name} the elephant goes 'phrRRRRRRRRRRR!!!!!!!'`);
};

Elephant.prototype.grow = function () {
  this.height += 12;
};

Elephant.prototype.addTrick = function (trick) {
  this.tricks.push(trick);
};

Elephant.prototype.play = function () {
  let trick = this.tricks[Math.floor(Math.random() * (this.tricks.length))];
  console.log(`${this.name} is ${trick}!`);
};
