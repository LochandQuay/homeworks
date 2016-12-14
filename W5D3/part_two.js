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
