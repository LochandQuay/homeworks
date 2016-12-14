// Phase I: Callbacks
function callback(array) {
  array.forEach(function(x) {
    console.log(x);
  });
  return;
}

function titleize(names, callback) {
  var titles = names.map(function(name) {
    return `Mx. ${name} Jingleheimer Schmidt`;
  });

  return callback(titles);
}

// Phase II: Constructors, Prototypes, and this
function Elephant(name, height, tricks) {
  this.name = name;
  this.height = height;
  this.tricks = tricks;
}

Elephant.prototype.trumpet = function() {
  return `${this.name} the elephant goes "phrRRRRRRRRRR!!!!!"`;
}

Elephant.prototype.grow = function() {
  return this.height += 12;
}

Elephant.prototype.addTrick = function(trick) {
  this.tricks.push(trick);
  return this.tricks;
}

Elephant.prototype.play = function() {
  var max = this.tricks.length;
  var randomNumber = Math.floor(Math.random() * (max + 1));
  return `${this.name} is ${this.tricks[randomNumber]}!`;
}
