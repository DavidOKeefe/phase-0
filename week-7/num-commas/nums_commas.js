// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Kai Huang.

// Pseudocode
// Convert the number to an array of string.
// Reverse the array.
// Create a new variable to hold the new number
// Iterate through the array and slice into groups of three.
// Put each slice into the new variable and
// Add "," after each group.
// Put the last element(s) in to the new variable.
// Reverse the new variable and connect the numbers
// and commas inside it.


// Initial Solution
function separateComma(number){
  var array = number.toString().split("").reverse();
  var newNumber=[];

  for (var i=0; i<array.length; i+=3) {
    newNumber.push(array.slice(i,i+3));
    newNumber.push(",")
  }
  newNumber.pop();

   var flat_arr = [].concat.apply([],newNumber)

  flat_arr=flat_arr.reverse().join("");
  console.log(flat_arr);

  }



// Refactored Solution
function separateComma(number){
  var reverseNumber=number.toString().split("").reverse();
  var sliceNumber=[];

  for (var i=0; i<reverseNumber.length; i+=3) {
    sliceNumber.push(reverseNumber.slice(i,i+3));
    if (reverseNumber.length - i > 3) { sliceNumber.push(","); }
  }

  var formattedNumber = [].concat.apply([],sliceNumber);
  formattedNumber=formattedNumber.reverse().join("");
  console.log(formattedNumber);
}



// Your Own Tests (OPTIONAL)
console.log(separateComma(1))
console.log(separateComma(10))
console.log(separateComma(100))
console.log(separateComma(1000))
console.log(separateComma(10000))
console.log(separateComma(100000))
console.log(separateComma(1000000))
console.log(separateComma(10000000))


// Reflection

// Q: What was it like to approach the problem from the perspective of JavaScript?
//    Did you approach the problem differently?
// A: It was easier to come up with the logic the second time around but we were less
//    familiar with JS methods so that research took some time.

// Q: What did you learn about iterating over arrays in JavaScript?
// A: There are fewer options than in ruby and it seems more manual.
// Q: What was different about solving this problem in JavaScript?
// A: The iteration options made it less succinct.
// Q: What built-in methods did you find to incorporate in your refactored solution?
// A: We used the .split(), .reverse(), .toString(), .push, .concat, .apply methods.



