// PSEUDOCODE
//
// -- Create function to generate new bingo boards --
//
// 1.) Create an empty instance variable 'board' that will accept board values.
//     No need to nest arrays since website will format table.
// 2.) Create variables containing each of the possible column values (BINGO).
// 3.) Create loop to add the necessary 25 values to the board variable.
// 4.) Within the loop shuffle and pop each of the (BINGO) variables into the board variable.
// 5.) Set the center square as a free space.
// 6.) Return the instance variable board.
//
// -- Create functions to start game with two players --
//
// 1.) Set up empty board variables that can be accessed by all program functions
// 2.) Create startGame function that will generate two instances of gameBoard.
//
// -- Create function to generate a random bingo ball --
//
// 1.) Create an empty variable to hold the generated ball.
// 2.) Select a random BINGO letter and add it to the variable.
// 3.) Based on random letter, select random number from appropriate range and
//     add the number to the variable as well.
// 4.) Return the random ball.
//
// -- Create function to select ball and compare to players boards --
//
// 1.) Create a variable and set it equal to the return value from the random ball function.
// 2.) Variable will be used to display selected ball to game player.
// 3.) Iterate through board 1 and determine if ball number is on board 1.
//     If true, replace the number on the board with an 'X'.
// 4.) Next iterate through the second board in the same way so both boards have been updated.
//
// -- Check board for winning board --
//
// 1.) Define all possible winning combinations.
// 2.) After each ball is pulled and the boards are updated, compare against the
//     winning combinations to see if there is a winner.
// 3.) If there is a winner, display winning message.
//
// -- Display Boards on Projects Page --
// 1.) Add button to HTML that will call the start game method.
// 2.) When game is started, display bingo board on the page
// 3.) Hide the start game button.
// 4.) Add button to generate a ball that is only visible once the game has started.
// 5.) When ball is generated, display it to the webpage.
// 6.) When ball is generated, call the check board method. Refresh board on webpage.
// 7.) Generate ball can be clicked until board is a winner.
// 8.) Once game is a winner, hide the generate ball button.
// 9.) Add button to start a new game.


// See online at: https://davidokeefe.github.io/projects/bingo_project/views/bingo.html

var bingoLetters = [ "B", "I", "N", "G", "O" ]
var board1 = []
var board2 = []
var playerName1 = document.getElementById('playerName1')
var playerName2 = document.getElementById('playerName2')
var boardHeading1 = document.getElementsByClassName('boardHeading1');
var boardHeading2 = document.getElementsByClassName('boardHeading2');
var boardDisplay1 = document.getElementsByClassName('boardDisplay1');
var boardDisplay2 = document.getElementsByClassName('boardDisplay2');
var nextBallText = document.getElementsByClassName('nextBall');
var boardTableCell = document.querySelectorAll('td[id]');
var winner = document.getElementsByClassName('winner')
document.getElementById("newGameVisibility").style.display = ""
document.getElementById("nextBallButtonVisibility").style.display = "none"
document.getElementById("playAgainVisibility").style.display = "none"
document.getElementById("nextBall").style.display = "none"

function startGame(){
  board1 = generateBoard();
  board2 = generateBoard();
  showGame(board1, board2);
}

function showGame(board1, board2) {
  playerName1.innerHTML = "Player 1"
  playerName2.innerHTML = "Player 2"
  for (var i=0; i < boardHeading1.length; i++){ boardHeading1[i].innerHTML = bingoLetters[i]; }
  for (var i=0; i < boardHeading2.length; i++){ boardHeading2[i].innerHTML = bingoLetters[i]; }
  for (var i=0; i < boardDisplay1.length; i++){ boardDisplay1[i].innerHTML = board1[i]; }
  for (var i=0; i < boardDisplay2.length; i++){ boardDisplay2[i].innerHTML = board2[i]; }
  for (var i=0; i < boardTableCell.length; i++){ boardTableCell[i].style.border = "0.1em solid #d3d3d3"; }
  document.getElementById("newGameVisibility").style.display = "none";
  document.getElementById("nextBallButtonVisibility").style.display = "";
}

function playAgain(){
  window.location.reload();
}

function nextBall(){
  var selectedBall = randomBall();
  document.getElementById("nextBall").style.display = ""
  nextBallText[0].innerHTML = selectedBall[0] + "-" + selectedBall[1];
  updateBoard(selectedBall);
}

function updateBoard(selectedBall){
  board1 = checkBoardForMatch(board1, selectedBall);
  board2 = checkBoardForMatch(board2, selectedBall);
  for (var i=0; i < boardDisplay1.length; i++){ boardDisplay1[i].innerHTML = board1[i]; }
  for (var i=0; i < boardDisplay1.length; i++){ boardDisplay2[i].innerHTML = board2[i]; }
  for (var i=0; i < boardTableCell.length; i++){
    if (boardTableCell[i].innerHTML === 'X'){ boardTableCell[i].style.backgroundColor = "#d3d3d3"; }
  }
  checkBoardforWinner();
}

function checkBoardForMatch(board, selectedBall){
  for(var i=0; i<25; i++){ if (board[i] == selectedBall[1]){ board[i] = 'X'; } }
  return board
}

function checkBoardforWinner(){
  if(winningBoard(board1) == true){ winningMessage("Player 1"); }
  else if (winningBoard(board2) == true){ winningMessage("Player 2"); }
}

function winningMessage(player){
  winner[0].innerHTML = "Bingo! " + player + " wins!";
  document.getElementById("nextBallButtonVisibility").style.display = "none";
  document.getElementById("playAgainVisibility").style.display = "";
}

function randomBall(){
  var randomBall = []
  randomBall.push(bingoLetters[randomNumber(0,4)])
    if(randomBall == 'B'){randomBall.push(randomNumber(1,15))}
    else if(randomBall == 'I'){ randomBall.push(randomNumber(16,30)) }
    else if(randomBall == 'N'){ randomBall.push(randomNumber(31,45)) }
    else if(randomBall == 'G'){ randomBall.push(randomNumber(46,60)) }
    else if(randomBall == 'O'){ randomBall.push(randomNumber(61,75)) }
  return randomBall
}

function randomNumber(min, max){
  return Math.floor(Math.random()* (max-min+1)+min);
}

function shuffle(array) {
    for (var i = array.length - 1; i > 0; i--) {
        var j = Math.floor(Math.random() * (i + 1));
        var temp = array[i];
        array[i] = array[j];
        array[j] = temp;
    }
    return array;
}

function generateBoard(){
  this.board = [];
  var columnB = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]
  var columnI = [16,17,18,19,20,21,22,23,24,25,26,27,28,29,30]
  var columnN = [31,32,33,34,35,36,37,38,39,40,41,42,43,44,45]
  var columnG = [46,47,48,49,50,51,52,53,54,55,56,57,58,59,60]
  var columnO = [61,62,63,64,65,66,67,68,69,70,71,72,73,74,75]
  while(this.board.length < 25) {
    board.push(shuffle(columnB).pop());
    board.push(shuffle(columnI).pop());
    board.push(shuffle(columnN).pop());
    board.push(shuffle(columnG).pop());
    board.push(shuffle(columnO).pop());
  }
  setFreeSpace();
  return this.board
}

function setFreeSpace(){
  this.board[12] = 'X'
}

function winningBoard(playersBoard){
  if ((playersBoard[0]  == "X" && playersBoard[1]  == "X" && playersBoard[2]  == "X" && playersBoard[3]  == "X" && playersBoard[4]  == "X") ||
      (playersBoard[5]  == "X" && playersBoard[6]  == "X" && playersBoard[7]  == "X" && playersBoard[8]  == "X" && playersBoard[9]  == "X") ||
      (playersBoard[10] == "X" && playersBoard[11] == "X" && playersBoard[12] == "X" && playersBoard[13] == "X" && playersBoard[14] == "X") ||
      (playersBoard[15] == "X" && playersBoard[16] == "X" && playersBoard[17] == "X" && playersBoard[18] == "X" && playersBoard[19] == "X") ||
      (playersBoard[20] == "X" && playersBoard[21] == "X" && playersBoard[22] == "X" && playersBoard[23] == "X" && playersBoard[24] == "X") ||
      (playersBoard[0]  == "X" && playersBoard[5]  == "X" && playersBoard[10] == "X" && playersBoard[15] == "X" && playersBoard[20] == "X") ||
      (playersBoard[1]  == "X" && playersBoard[6]  == "X" && playersBoard[11] == "X" && playersBoard[16] == "X" && playersBoard[21] == "X") ||
      (playersBoard[2]  == "X" && playersBoard[7]  == "X" && playersBoard[12] == "X" && playersBoard[17] == "X" && playersBoard[22] == "X") ||
      (playersBoard[3]  == "X" && playersBoard[8]  == "X" && playersBoard[13] == "X" && playersBoard[18] == "X" && playersBoard[23] == "X") ||
      (playersBoard[4]  == "X" && playersBoard[9]  == "X" && playersBoard[14] == "X" && playersBoard[19] == "X" && playersBoard[24] == "X") ||
      (playersBoard[0]  == "X" && playersBoard[6]  == "X" && playersBoard[12] == "X" && playersBoard[18] == "X" && playersBoard[24] == "X") ||
      (playersBoard[4]  == "X" && playersBoard[8]  == "X" && playersBoard[12] == "X" && playersBoard[16] == "X" && playersBoard[20] == "X")){
    return true;
  }
}

// Reflection
// Q: What was the most difficult part of this challenge?
// A: Accessing the DOM was definitely the most challenging part. Once I got the
//    handle of that, applying CSS styling via JS was a little challenging.

// Q: What did you learn about creating objects and functions that interact with one
//    another?
// A: I found the 'this.' instance call to be very useful in certain situations.

// Q: Did you learn about any new built-in methods you could use in your refactored
//    solution? If so, what were they and how do they work?
// A: All the DOM methods were brand new to me.

// Q: How can you access and manipulate properties of objects?
// A: Iteration, or directly to the variable.
