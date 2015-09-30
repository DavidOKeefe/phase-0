// Declare a variable
var volume = 12;

// Prompt user for favorite food and return within an alert
var favoriteFood = prompt("What is your favorite food?")
alert ("Hey! " + favoriteFood + " is my favorite food too!")

//Looping a triangle
var numSign = '#';
for (i = 1; i <= 7; i++){
  console.log(numSign);
  numSign += '#';
}

//Fizz Buzz
number = 1;
while(number <= 100){
  if (number % 3 == 0 && number % 5 == 0){
    console.log("FizzBuzz");
  } else if (number % 3 == 0 && number % 5 != 0) {
    console.log("Fizz");
  } else if (number % 3 != 0 && number % 5 == 0) {
    console.log("Buzz");
  } else {
    console.log(number);
  }
  number ++;
}

//Minimum

function min(number1, number2){
  if (number1 < number2){
    return number1;
  } else {
    return number2;
  }
}
console.log(min(0, 10))
console.log(min(0, -10))

// Object

var me = {
  name: "David",
  age: 35,
  "Favorite Foods": ["Taco", "Sandwich", "Apple"]
}
