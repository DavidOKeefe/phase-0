
// Generate Bingo Board
function bingoBoard() {
  this.board = [[],[],[],[],[]];
  var min = 1;
  var max = 15;
  for(var i=0; i<5; i++){
    assignColumnNumbers(min, max)
    min += 15;
    max += 15;
  }
  setFreeSpace();
  return this.board
}

function assignColumnNumbers(min, max){
  for(var i=0; i<5; i++){
    this.board[i].push(rand(min, max))
  }
}

function setFreeSpace(){
  this.board[2][2] = 'X'
}

function rand(min, max){
  return Math.floor(Math.random()* (max-min+1)+min);
}

//Play Bingo

var bingoLetters = [ "B", "I", "N", "G", "O" ]
var winningMessage = "You Win!"

function playGame(){
  var board = bingoBoard()
  while (winningBoard(board) == false){
    selectedBall = randomBall();
    console.log("The selected ball is " + selectedBall[0] + ", " + selectedBall[1] + ".");
    board = checkBoardForMatch(board, selectedBall);
    console.log("Your board is now:");
    console.log(board)
  }
  console.log(winningMessage)
}

function checkBoardForMatch(board, selectedBall){
  var selectedLetterColumn = bingoLetters.indexOf(selectedBall[0])
  for(var i=0; i<5; i++){
    if (board[i][selectedLetterColumn] == selectedBall[1]){
      board[i][selectedLetterColumn] = 'X';
    }
  }
  return board
}



function randomBall(){
  var randomBall = []
  randomBall.push(bingoLetters[rand(0,4)])
    if (randomBall == 'B'){
      randomBall.push(rand(1,15))
    }
    else if(randomBall == 'I'){
      randomBall.push(rand(16,30))
    }
    else if(randomBall == 'N'){
      randomBall.push(rand(31,45))
    }
    else if(randomBall == 'G'){
      randomBall.push(rand(46,60))
    }
    else if(randomBall == 'O'){
      randomBall.push(rand(61,75))
    }
  return randomBall
}


function winningBoard(playersBoard){
  if ((playersBoard[0][0] == "X" && playersBoard[1][0] == "X" && playersBoard[2][0] == "X" && playersBoard[3][0] == "X" && playersBoard[4][0] == "X") ||
      (playersBoard[0][1] == "X" && playersBoard[1][1] == "X" && playersBoard[2][1] == "X" && playersBoard[3][1] == "X" && playersBoard[4][1] == "X") ||
      (playersBoard[0][2] == "X" && playersBoard[1][2] == "X" && playersBoard[2][2] == "X" && playersBoard[3][2] == "X" && playersBoard[4][2] == "X") ||
      (playersBoard[0][3] == "X" && playersBoard[1][3] == "X" && playersBoard[2][3] == "X" && playersBoard[3][3] == "X" && playersBoard[4][3] == "X") ||
      (playersBoard[0][4] == "X" && playersBoard[1][4] == "X" && playersBoard[2][4] == "X" && playersBoard[3][4] == "X" && playersBoard[4][4] == "X") ||
      (playersBoard[0][0] == "X" && playersBoard[0][1] == "X" && playersBoard[0][2] == "X" && playersBoard[0][3] == "X" && playersBoard[0][4] == "X") ||
      (playersBoard[1][0] == "X" && playersBoard[1][1] == "X" && playersBoard[1][2] == "X" && playersBoard[1][3] == "X" && playersBoard[1][4] == "X") ||
      (playersBoard[2][0] == "X" && playersBoard[2][1] == "X" && playersBoard[2][2] == "X" && playersBoard[2][3] == "X" && playersBoard[2][4] == "X") ||
      (playersBoard[3][0] == "X" && playersBoard[3][1] == "X" && playersBoard[3][2] == "X" && playersBoard[3][3] == "X" && playersBoard[3][4] == "X") ||
      (playersBoard[4][0] == "X" && playersBoard[4][1] == "X" && playersBoard[4][2] == "X" && playersBoard[4][3] == "X" && playersBoard[4][4] == "X") ||
      (playersBoard[0][0] == "X" && playersBoard[1][1] == "X" && playersBoard[2][2] == "X" && playersBoard[3][3] == "X" && playersBoard[4][4] == "X") ||
      (playersBoard[0][4] == "X" && playersBoard[1][3] == "X" && playersBoard[2][2] == "X" && playersBoard[3][1] == "X" && playersBoard[4][0] == "X")){
    return true;
  } else { return false; }
}












//Driver Code
playGame()
