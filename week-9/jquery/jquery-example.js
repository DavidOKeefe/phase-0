// U3.W9:JQuery


// I worked on this challenge by myself.
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 1:
  //link the image

//RELEASE 2:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})

//RELEASE 3:
  //Add code here to select elements of the DOM
  bodyElement = $('body');

//RELEASE 4:
  // Add code here to modify the css and html of DOM elements
  bodyHeaderOne = $('.header')
  bodyHeaderOne.css('color', '#ddffdd')
  bodyHeaderOne.css({"border-color": "#C1E0FF",
             "border-weight":"1px",
             "border-style":"solid"})

//RELEASE 5: Event Listener
  // Add the code for the event listener here
$('img').on('mouseover',function(e){
  e.preventDefault()
  $(this).attr('src', 'imgs/bobolink.jpeg')
})

})  // end of the document.ready function: do not remove or write DOM manipulation below this.
