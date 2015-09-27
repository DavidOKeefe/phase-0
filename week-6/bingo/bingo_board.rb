class BingoBoard
  attr_accessor :board, :rows

  def self.build
    new.build
  end

  def initialize
    @rows = 5
    @board = Array.new(rows) { Array.new(0) }
  end

  def build
    starting_number = 1
    ending_number = 15
    rows.times do
      board.map { |column| column << rand(starting_number..ending_number) }
      starting_number += 15
      ending_number += 15
    end
    set_free_space
    board
  end

  def set_free_space
    board[middle][middle] = 'X'
  end

  def middle
    rows / 2
  end
end
