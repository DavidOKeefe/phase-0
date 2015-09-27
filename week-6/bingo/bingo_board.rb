class BingoBoard
  attr_accessor :board, :rows
  attr_reader :column_starting_number, :column_ending_number

  def self.build
    bingo_board = new.build
    bingo_board.board
  end

  def initialize
    @rows = 5
    @board = Array.new(rows) { Array.new(0) }
    @column_starting_number = 1
    @column_ending_number = 15
  end

  def build
    rows.times { assign_column_numbers }
    set_free_space
    self
  end

  private

  def set_free_space
    board[middle][middle] = 'X'
  end

  def middle
    rows / 2
  end

  def assign_column_numbers
    board.map { |column| column << rand(column_starting_number..column_ending_number) }
    increment_column_numbers
  end

  def increment_column_numbers
    @column_starting_number += 15
    @column_ending_number += 15
  end
end
