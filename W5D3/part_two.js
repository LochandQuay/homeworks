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
  var randomNumber = Math.floor(Math.random() * (max));
  return `${this.name} is ${this.tricks[randomNumber]}!`;
}

// Phase III: Function Invocation
let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);

let herd = [ellie, charlie, kate, micah];

Elephant.prototype.paradeHelper = function() {
  console.log(`${this.name} is trotting by!`);
}

herd.forEach(el => el.paradeHelper());

// Phase IV: Closures
function dinerBreakfast() {
  var orderIntro = "I'll have pancakes";

  function addOrder(order) {
    orderIntro = orderIntro + " and " + order
    return orderIntro + " please."
  }

  return addOrder;
}
let bfastOrder = dinerBreakfast(); // currently does not return initially...
