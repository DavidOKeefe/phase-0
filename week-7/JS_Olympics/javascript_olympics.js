// JavaScript Olympics

// I paired with: Sam Purcell on this challenge.

// This challenge took me 1.5 hours.


// Bulk Up

var listOfAthletes = [{name: "Joe Smith", event: "Mens 400m"}, {name: "Sara Jones", event: "Womens Highjump"}]

function bulkUp(athletes){
  for(var i = 0; i < athletes.length; i++){
    athletes[i].win = true
    if (athletes[i].win == true){
      console.log(athletes[i].name + " won the " + athletes[i].event)
    }
  }
}
bulkUp(listOfAthletes)



// Jumble your words
function reverseWord(word) {
  return word.split("").reverse().join("");
}

console.log(reverseWord("abcdef"))


// 2,4,6,8

function evenNumbers(numbers){
  var evenNumbers = []
  for(var i = 0; i < numbers.length; i++){
    if (numbers[i] % 2 == 0){
      evenNumbers.push(numbers[i]);
    }
  }
  return evenNumbers
}

console.log(evenNumbers([1,2,3,4,5,6,7,8]))


// "We built this city"
function Athlete(name, age, sport, quote) {
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)



// Reflection

// Q: What JavaScript knowledge did you solidify in this challenge?
// A: The literal vs constructor challenge was helpful to understand that concept.

// Q: What are constructor functions?
// A: Constructor functions allow you to create instances.

// Q: How are constructors different from Ruby classes (in your research)?
// A: They both offer ways to create instances but in ruby classes are inheriting much
//    more from their parent class.
