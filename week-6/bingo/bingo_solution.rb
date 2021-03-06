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



#Refactored 1

# require 'pp'

# class Bingo
#   BINGO_LETTERS = [ "B", "I", "N", "G", "O" ]

#   attr_reader :bingo_board

#   def initialize
#     @bingo_board = build_board
#   end

#   def play_game
#     until winning_board do
#       pp "The selected ball is #{selected_ball[0]}, #{selected_ball[1]}."
#       sleep 0.2
#       check_board_for_match
#       pp "Your board is now:"
#       pp @bingo_board
#       sleep 0.2
#       return_ball_to_bin
#     end
#     puts WINNING_MESSAGE
#   end

# private
#   def build_board
#     board = [[],[],[],[],[]]
#     starting_number = 1
#     ending_number = 15
#     5.times do
#       board.map do |column|
#         column << rand(starting_number..ending_number)
#       end
#       starting_number += 15
#       ending_number += 15
#     end
#     board[2][2] = "X"
#     board
#   end

#   def selected_ball
#     @selected_ball ||= random_ball
#   end

#   def return_ball_to_bin
#     @selected_ball = nil
#   end

#   def random_ball
#     random_ball = [BINGO_LETTERS.sample]
#     if random_ball == ["B"]
#       random_ball << rand(1..15)
#     elsif random_ball == ["I"]
#       random_ball << rand(16..30)
#     elsif random_ball == ["N"]
#       random_ball << rand(31..45)
#     elsif random_ball == ["G"]
#       random_ball << rand(46..60)
#     elsif random_ball == ["O"]
#       random_ball << rand(61..75)
#     end
#     random_ball
#   end

#   def check_board_for_match
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

#   WINNING_MESSAGE = "
#      ____    ____  ______    __    __     ____    __    ____  __  .__   __.  __
#      \\   \\  /   / /  __  \\  |  |  |  |    \\   \\  /  \\  /   / |  | |  \\ |  | |  |
#       \\   \\/   / |  |  |  | |  |  |  |     \\   \\/    \\/   /  |  | |   \\|  | |  |
#        \\_    _/  |  |  |  | |  |  |  |      \\            /   |  | |  . `  | |  |
#          |  |    |  `--'  | |  `--'  |       \\    /\\    /    |  | |  |\\   | |__|
#          |__|     \\______/   \\______/         \\__/  \\__/     |__| |__| \\__| (__)"
# end

#Refactor 2 # NOTE: I took this challenge far on my own but I enjoyed it so
            # much I had someone look it over an offer some tips. Refactor 1 is
            # 100% my work. Breaking build_board into a seperate class and the
            # code within that class was done while pairing.
            # For evaluation purposes, please consider Refactor 1 my final solution.
            # For learning purposes, Refactor 2 taught me some great new concepts.


require 'pp'
require_relative 'bingo_board'

class Bingo
  BINGO_LETTERS = [ "B", "I", "N", "G", "O" ]

  attr_reader :bingo_board

  def initialize(board_factory: BingoBoard)
    @bingo_board = board_factory.build
  end

  def play_game
    until winning_board do
      pp "The selected ball is #{selected_ball[0]}, #{selected_ball[1]}."
      sleep 0.2
      check_board_for_match
      pp "Your board is now:"
      pp @bingo_board
      sleep 0.2
      return_ball_to_bin
    end
    puts WINNING_MESSAGE
  end

private
  def selected_ball
    @selected_ball ||= random_ball
  end

  def return_ball_to_bin
    @selected_ball = nil
  end

  def random_ball
    random_ball = [BINGO_LETTERS.sample]
    if random_ball == ["B"]
      random_ball << rand(1..15)
    elsif random_ball == ["I"]
      random_ball << rand(16..30)
    elsif random_ball == ["N"]
      random_ball << rand(31..45)
    elsif random_ball == ["G"]
      random_ball << rand(46..60)
    elsif random_ball == ["O"]
      random_ball << rand(61..75)
    end
    random_ball
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

Bingo.new.play_game



# #Reflection

# Q: How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
# A: The inital pseudocode wasn't that difficult but I definitely added features beyond what was pseudocoded.
#
# Q: What are the benefits of using a class for this challenge?
# A: Having instances of games made a lot of sense for the challenge.
#
# Q: How can you access coordinates in a nested array?
# A: Array[2][2]
#
# Q: What methods did you use to access and modify the array?
# A: I used the .index .map and []
#
# Q: How did you determine what should be an instance variable versus a local variable?
# A: I used mostly instance variables with the exception of iteration.
#
# Q: What do you feel is most improved in your refactored solution?
# A: Building boards and selecting balls.
