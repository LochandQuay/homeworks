// madLib


// isSubstring
function isSubstring(search, sub) {
  var words = search.split(" ");
  for(var i = 0; i < words.length; i++) {
    if(words[i] === sub) {
      return true;
    }
  }
  return false;
}

// isPrime
function isPrime(number) {
  for(var i = 2; i < number; i++) {
    if(number % i === 0) {
      return false;
    }
  }
  return true;
}

// firstNPrimes
function firstNPrimes(n) {
  var primes = new Array;
  var i = 2;
  var count = 0;
  while(count < n) {
    if(isPrime(i)) {
      primes.push(i);
      count++;
    }
    i++;
  }
  return primes;
}

// sumOfNPrimes
function sumOfNPrimes(n) {
  let primes = firstNPrimes(n);
  let count = 0;
  for(var i = 0; i < primes.length; i++) {
    count += primes[i];
  }
  return count;
}

// allOrNothing
function allOrNothing() {
  var mod = arguments[0];
  var args = Array.from(arguments);
  args.shift();
  for(var i = 0; i < args.length; i++) {
    if(args[i] % mod !== 0) {
      return false;
    }
  }
  return true;
}
