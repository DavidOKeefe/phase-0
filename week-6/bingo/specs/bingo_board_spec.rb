require_relative '../bingo_board'

describe BingoBoard do
  subject(:bingo_board) { described_class.build }

  it 'has 5 colummns' do
    expect(bingo_board[0].size).to eq(5)
  end

  it 'has 5 rows' do
    expect(bingo_board.size).to eq(5)
  end

  it 'has an X in the middle' do
    expect(bingo_board[2][2]).to eq('X')
  end

  describe 'columns' do
    it 'has B numbers between 1 and 15' do
      expect(
          (0..4).all? do |column|
            bingo_board[column][0] >= 1 && bingo_board[column][0] <= 15
          end
        ).to eq(true)
    end

    it 'has I numbers between 16 and 30' do
      expect(
          (0..4).all? do |column|
            bingo_board[column][1] >= 16 && bingo_board[column][1] <= 30
          end
        ).to eq(true)
    end

    it 'has N numbers between 31 and 45' do
      expect(
          [0, 1, 3, 4].all? do |column|  # excludes middle square that is X
            bingo_board[column][2] >= 31 && bingo_board[column][2] <= 45
          end
        ).to eq(true)
    end

    it 'has G numbers between 46 and 60' do
      expect(
          (0..4).all? do |column|
            bingo_board[column][3] >= 46 && bingo_board[column][3] <= 60
          end
        ).to eq(true)
    end

    it 'has O numbers between 61 and 75' do
      expect(
          (0..4).all? do |column|
            bingo_board[column][4] >= 61 && bingo_board[column][4] <= 75
          end
        ).to eq(true)
    end
  end
end
