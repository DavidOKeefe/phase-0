// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with:
// This challenge took me [#] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
};




// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
// 1.) Iterate through votes object and access the ballot(object) for each names property.
// 2.) Iterate through the ballot object. Compare the position with the object associated with the position in the vote
//     count object.
// 3.) Check if they have the same value. If they do have the same value, add one to that values counter.
// 4.) If the value doesn't exist, add the value and set the counter equal to 1.
// 5.) Iterate through voteCount accessing each position
// 6.) Within each position, access the name that has the highest voteCount
//      --create a local variable to store first (name, voteCount) pair and compare each successive pair with the
//        variable, replacing that variable with the newest pair only if their voteCount is higher
//      --once done, push name to officers object.
// __________________________________________
// Initial Solution

// for (var names in votes) {
//   if(votes.hasOwnProperty(names)){
//     var ballot = votes[names];
//       for (var position in ballot){
//         if(ballot.hasOwnProperty(position)){
                          //below checks if voteCount already has the name for that position. If so, it adds one to its
                          //value and if not, it adds the name and sets its value to one.
//           if (voteCount[position].hasOwnProperty([ballot[position]])){
//               voteCount[position][ballot[position]] += 1
//               }
//           else{
//               voteCount[position][ballot[position]] = 1
//               };
//          }
//       }
//   }
// }

// for (var positions in voteCount) {
//   var talliedVotes = voteCount[positions];
//   var highestVote = 0;
//   for ( var names in talliedVotes) {
//     var candidateVote = talliedVotes[names];
//     if (candidateVote > highestVote){
//       highestVote = candidateVote;
//       officers[positions] = names;
//     }
//   }
// }

// console.log(voteCount)

//Prez: louise, VP: Hermann, Sec: Fred, Tres: Ivy

// __________________________________________
// Refactored Solution

for (var names in votes) {
  var ballot = votes[names];
  for (var position in ballot){
    if (voteCount[position].hasOwnProperty([ballot[position]])){
        voteCount[position][ballot[position]] += 1
    }
    else{
        voteCount[position][ballot[position]] = 1
    };
  }
}

for (var positions in voteCount) {
  var talliedVotes = voteCount[positions];
  var highestVote = 0;
  for ( var name in talliedVotes) {
    var candidateVote = talliedVotes[name];
    if (candidateVote > highestVote){
      highestVote = candidateVote;
      officers[positions] = name;
    }
  }
}


// __________________________________________
// Reflection

// Q: What did you learn about iterating over nested objects in JavaScript?
// A: I learned that accurate variable names are very important to keep track of the values while looping.
//
// Q: Were you able to find useful methods to help you with this?
// A: The for/in and .hasOwnProperty were both very useful.
//
// Q: What concepts were solidified in the process of working through this challenge?
// A: Accessing objects through bracket notation.




// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)
