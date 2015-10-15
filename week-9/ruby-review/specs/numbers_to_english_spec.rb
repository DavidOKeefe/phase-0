require_relative '../numbers_to_english'

describe 'numbers to english' do
  it 'converts the integer 1 to the string one' do
    expect(number_to_word(1)).to eq('one')
  end

  it 'converts the integer 2 to the string two' do
    expect(number_to_word(2)).to eq('two')
  end

  it 'converts the integer 5 to the string five' do
    expect(number_to_word(5)).to eq('five')
  end

  it 'converts the integer 10 to the string ten' do
    expect(number_to_word(10)).to eq('ten')
  end

  it 'converts the integer 13 to the string thirteen' do
    expect(number_to_word(13)).to eq('thirteen')
  end

  it 'converts the integer 21 to the string twenty-one' do
    expect(number_to_word(21)).to eq('twenty-one')
  end

  it 'converts the integer 35 to the string thirty-five' do
    expect(number_to_word(35)).to eq('thirty-five')
  end

  it 'converts the integer 47 to the string forty-seven' do
    expect(number_to_word(47)).to eq('forty-seven')
  end

    it 'converts the integer 100 to the string one-hundred' do
    expect(number_to_word(100)).to eq('one-hundred')
  end

end
