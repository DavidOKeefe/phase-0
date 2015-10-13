// DOM Manipulation Challenge


// I worked on this challenge with: Regina Compton.


// Add your JavaScript calls to this page:

// Release 1:
document.getElementById("release-0").className = "done";


// Release 2:
document.getElementById("release-1").style.display = "none";


// Release 3:
document.getElementsByTagName("h1")[0].innerHTML = "I completed release 2.";


// Release 4:
document.getElementById("release-3").style.backgroundColor = "#955251";


// Release 5:
var releaseFour = document.getElementsByClassName("release-4");
  for (var i = 0; i < releaseFour.length; i++) {
  releaseFour[i].style.fontSize = "2em";
  }

// Release 6:
var tmpl = document.getElementById("hidden");
document.body.appendChild(tmpl.content.cloneNode(true));

//Reflection
// Q: What did you learn about the DOM?
// A: I had done some challenges with the DOM already but this was good practice
//    accessing the various elements. The append child is new though I think this
//    may be something better handled with jQuery.
// Q: What are some useful methods to use to manipulate the DOM?
// A: .getElementByID, .getElementByClassName, .style, .innerHTML were all very useful.
