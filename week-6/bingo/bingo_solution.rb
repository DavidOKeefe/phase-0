# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
#  Input:  Method Call
#  Output: String containing one letter and one number.
#  Steps:
#    1.) Available letters are stored and randomly selected
#    2.) Numbers are randomly generated
#    3.) Randomly selected letter and number are returned in an array.

# Check the called column for the number called. If the number is in the column, replace with an 'x'
#  Input: The ball selected
#  Output: Updated bingo board
#  Steps:
#    1.) Identify the index position of the selected bingo letter
#    2.) Iterate over board to determine if nested array contains number in the bingo letter column
#    3.) Update with "X" if number matches selected ball number.

# Display the board to the console (prettily)
#    1.) After each iteration, display updated board to console using pretty print.
#    2.) Continue to select balls and compare to board until board is solved.
#    3.) Return winning message.

# Initial Solution

# require 'pp'

# class BingoBoard
#   BINGO_LETTERS = [ "B", "I", "N", "G", "O" ]

#   attr_reader :bingo_board

#   def initialize(board)
#     @bingo_board = board
#   end

#   def play_game
#     until winning_board do
#       selected_ball = select_new_ball
#       pp "The selected ball is #{selected_ball[0]}, #{selected_ball[1]}."
#       check_board_for_match(selected_ball)
#       pp "Your board is now:"
#       pp @bingo_board
#     end
#     puts "You Win!"
#   end

#   def select_new_ball
#     bingo_ball = [BINGO_LETTERS.sample, rand(1..100)]
#   end

#   def check_board_for_match(selected_ball)
#     selected_letter_column = BINGO_LETTERS.index(selected_ball[0])
#     @bingo_board.map do |row|
#       if row[selected_letter_column] == selected_ball[1]
#         row[selected_letter_column] = "X"
#       end
#     end
#   end

#   def winning_board
#     (@bingo_board[0][0] == "X" && @bingo_board[1][0] == "X" && @bingo_board[2][0] == "X" && @bingo_board[3][0] == "X" && @bingo_board[4][0] == "X") ||
#     (@bingo_board[0][1] == "X" && @bingo_board[1][1] == "X" && @bingo_board[2][1] == "X" && @bingo_board[3][1] == "X" && @bingo_board[4][1] == "X") ||
#     (@bingo_board[0][2] == "X" && @bingo_board[1][2] == "X" && @bingo_board[2][2] == "X" && @bingo_board[3][2] == "X" && @bingo_board[4][2] == "X") ||
#     (@bingo_board[0][3] == "X" && @bingo_board[1][3] == "X" && @bingo_board[2][3] == "X" && @bingo_board[3][3] == "X" && @bingo_board[4][3] == "X") ||
#     (@bingo_board[0][4] == "X" && @bingo_board[1][4] == "X" && @bingo_board[2][4] == "X" && @bingo_board[3][4] == "X" && @bingo_board[4][4] == "X") ||
#     (@bingo_board[0][0] == "X" && @bingo_board[0][1] == "X" && @bingo_board[0][2] == "X" && @bingo_board[0][3] == "X" && @bingo_board[0][4] == "X") ||
#     (@bingo_board[1][0] == "X" && @bingo_board[1][1] == "X" && @bingo_board[1][2] == "X" && @bingo_board[1][3] == "X" && @bingo_board[1][4] == "X") ||
#     (@bingo_board[2][0] == "X" && @bingo_board[2][1] == "X" && @bingo_board[2][2] == "X" && @bingo_board[2][3] == "X" && @bingo_board[2][4] == "X") ||
#     (@bingo_board[3][0] == "X" && @bingo_board[3][1] == "X" && @bingo_board[3][2] == "X" && @bingo_board[3][3] == "X" && @bingo_board[3][4] == "X") ||
#     (@bingo_board[4][0] == "X" && @bingo_board[4][1] == "X" && @bingo_board[4][2] == "X" && @bingo_board[4][3] == "X" && @bingo_board[4][4] == "X") ||
#     (@bingo_board[0][0] == "X" && @bingo_board[1][1] == "X" && @bingo_board[2][2] == "X" && @bingo_board[3][3] == "X" && @bingo_board[4][4] == "X") ||
#     (@bingo_board[0][4] == "X" && @bingo_board[1][3] == "X" && @bingo_board[2][2] == "X" && @bingo_board[3][1] == "X" && @bingo_board[4][0] == "X")
#   end



#Refactored

require 'pp'

class BingoBoard
  BINGO_LETTERS = [ "B", "I", "N", "G", "O" ]

  attr_reader :bingo_board

  def initialize(board)
    @bingo_board = board
  end

  def play_game
    until winning_board do
      pp "The selected ball is #{selected_ball[0]}, #{selected_ball[1]}."
      check_board_for_match
      pp "Your board is now:"
      pp @bingo_board
      return_ball_to_bin
    end
    puts WINNING_MESSAGE
  end

private
  def selected_ball
    @selected_ball ||= [BINGO_LETTERS.sample, rand(1..100)]
  end

  def return_ball_to_bin
    @selected_ball = nil
  end

  def check_board_for_match
    selected_letter_column = BINGO_LETTERS.index(selected_ball[0])
    @bingo_board.map do |row|
      if row[selected_letter_column] == selected_ball[1]
        row[selected_letter_column] = "X"
      end
    end
  end

  def winning_board
    (@bingo_board[0][0] == "X" && @bingo_board[1][0] == "X" && @bingo_board[2][0] == "X" && @bingo_board[3][0] == "X" && @bingo_board[4][0] == "X") ||
    (@bingo_board[0][1] == "X" && @bingo_board[1][1] == "X" && @bingo_board[2][1] == "X" && @bingo_board[3][1] == "X" && @bingo_board[4][1] == "X") ||
    (@bingo_board[0][2] == "X" && @bingo_board[1][2] == "X" && @bingo_board[2][2] == "X" && @bingo_board[3][2] == "X" && @bingo_board[4][2] == "X") ||
    (@bingo_board[0][3] == "X" && @bingo_board[1][3] == "X" && @bingo_board[2][3] == "X" && @bingo_board[3][3] == "X" && @bingo_board[4][3] == "X") ||
    (@bingo_board[0][4] == "X" && @bingo_board[1][4] == "X" && @bingo_board[2][4] == "X" && @bingo_board[3][4] == "X" && @bingo_board[4][4] == "X") ||
    (@bingo_board[0][0] == "X" && @bingo_board[0][1] == "X" && @bingo_board[0][2] == "X" && @bingo_board[0][3] == "X" && @bingo_board[0][4] == "X") ||
    (@bingo_board[1][0] == "X" && @bingo_board[1][1] == "X" && @bingo_board[1][2] == "X" && @bingo_board[1][3] == "X" && @bingo_board[1][4] == "X") ||
    (@bingo_board[2][0] == "X" && @bingo_board[2][1] == "X" && @bingo_board[2][2] == "X" && @bingo_board[2][3] == "X" && @bingo_board[2][4] == "X") ||
    (@bingo_board[3][0] == "X" && @bingo_board[3][1] == "X" && @bingo_board[3][2] == "X" && @bingo_board[3][3] == "X" && @bingo_board[3][4] == "X") ||
    (@bingo_board[4][0] == "X" && @bingo_board[4][1] == "X" && @bingo_board[4][2] == "X" && @bingo_board[4][3] == "X" && @bingo_board[4][4] == "X") ||
    (@bingo_board[0][0] == "X" && @bingo_board[1][1] == "X" && @bingo_board[2][2] == "X" && @bingo_board[3][3] == "X" && @bingo_board[4][4] == "X") ||
    (@bingo_board[0][4] == "X" && @bingo_board[1][3] == "X" && @bingo_board[2][2] == "X" && @bingo_board[3][1] == "X" && @bingo_board[4][0] == "X")
  end

  WINNING_MESSAGE = "
     ____    ____  ______    __    __     ____    __    ____  __  .__   __.  __
     \\   \\  /   / /  __  \\  |  |  |  |    \\   \\  /  \\  /   / |  | |  \\ |  | |  |
      \\   \\/   / |  |  |  | |  |  |  |     \\   \\/    \\/   /  |  | |   \\|  | |  |
       \\_    _/  |  |  |  | |  |  |  |      \\            /   |  | |  . `  | |  |
         |  |    |  `--'  | |  `--'  |       \\    /\\    /    |  | |  |\\   | |__|
         |__|     \\______/   \\______/         \\__/  \\__/     |__| |__| \\__| (__)"
end




#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.play_game



#Reflection

