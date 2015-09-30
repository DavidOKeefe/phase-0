// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

// Pseudocode



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
