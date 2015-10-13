 // I worked on this challenge by myself.
 // This challenge took me 1 hours.

 // Pseudocode
 // 1.) Accept a number argument and set defaults for fib and next fib.
//  2.) Compare the number to the next fib variable. If it's the same, return true.
//  3.) otherwise, recursively call the function again using the next fib argument.
//  4.) Continue until the next fib is equal or greater than the number.
//  5.) If the number is equal to the fib, return true, otherwise return false.


// Initial Solution

// function isFibonacci(num){
//   if (calculateFibonacci(num) == num){
//     return true;
//   }
//   else {
//     return false
//   }
// }

// function calculateFibonacci(num, priorFib, fibNumber){
//   if (typeof(priorFib) === 'undefined') priorFib = 0;
//   if (typeof(fibNumber) === 'undefined') fibNumber = 1;
//   var nextFib = priorFib + fibNumber
//   if (nextFib <= num){
//     return calculateFibonacci(num, fibNumber, nextFib);
//   }
//   else{
//     return fibNumber;
//   }
// }

// Refactored Solution

function isFibonacci(num){
  return (calculateFibonacci(num) == num)
}

function calculateFibonacci(num, priorFib, fibNumber){
  if (typeof(priorFib) === 'undefined')  priorFib = 0;
  if (typeof(fibNumber) === 'undefined') fibNumber = 1;
  var nextFib = priorFib + fibNumber
  if (nextFib <= num) return calculateFibonacci(num, fibNumber, nextFib);
  else return fibNumber;
}

// Driver Code
console.log("Should return true");
console.log(isFibonacci(3));
console.log(isFibonacci(5));
console.log(isFibonacci(13));
console.log(isFibonacci(55));
console.log(isFibonacci(144));
console.log(isFibonacci(610));
console.log(isFibonacci(6765));
console.log(isFibonacci(10946));

console.log("Should return false");
console.log(isFibonacci(4));
console.log(isFibonacci(9));
console.log(isFibonacci(25));
console.log(isFibonacci(150));
console.log(isFibonacci(400));


// Reflection

