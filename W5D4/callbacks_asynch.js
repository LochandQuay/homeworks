// Simple Timeout
window.setTimeout(function() {
  console.log("STOP");
}, 5000);

// Timeout with a Closure (Hammertime)
function hammertime(time) {
  window.setTimeout(function() {
    console.log(`${time} is HAMMER TIME`);
  });
}

// Some Tea? Some Biscuits?

const readline = require('readline');

const reader = readline.createInterface({
  input: process.stdin,
  output: process.stdout,
  terminal: false
});

function teaAndBiscuits() {
  reader.question("Would you like some tea? ", function(res) {
    console.log(`You said: ${res}.`);
    reader.question("How about some biscuits? ", function(res2) {
      console.log(`You said: ${res2}.`);
      const first = (res === 'yes') ? 'do' : 'don\'t';
      const second = (res2 === 'yes') ? 'do' : 'don\'t';

      console.log(`You ${first} want tea and you ${second} want biscuits.`);
      reader.close();
    });
  });
}
