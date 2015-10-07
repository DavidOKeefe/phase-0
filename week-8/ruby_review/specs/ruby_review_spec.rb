require_relative '../ruby_review'

describe Cipher  do
  before do
    @cipher = Cipher.new
  end

  describe 'cipher' do
    it 'shifts letters 4 places by default' do
      expect(@cipher.translate('e')).to eq('a')
    end

    it 'shifts letters to the back of the alphabet' do
      expect(@cipher.translate('d')).to eq('z')
    end

    it 'converts the punctuation @ to a space' do
      expect(@cipher.translate('@')).to eq(' ')
    end

    it 'converts the punctuation # to a space' do
      expect(@cipher.translate('#')).to eq(' ')
    end

    it 'converts the punctuation $ to a space' do
      expect(@cipher.translate('$')).to eq(' ')
    end

    it 'converts the punctuation % to a space' do
      expect(@cipher.translate('%')).to eq(' ')
    end

    it 'converts the punctuation ^ to a space' do
      expect(@cipher.translate('^')).to eq(' ')
    end

    it 'converts the punctuation & to a space' do
      expect(@cipher.translate('&')).to eq(' ')
    end

    it 'converts the punctuation * to a space' do
      expect(@cipher.translate('*')).to eq(' ')
    end

    it 'does not convert the punctuation !' do
      expect(@cipher.translate('!')).to eq('!')
    end

    it 'translates sentences' do
      expect(@cipher.translate('m^aerx%e&gsoi!')).to eq('i want a coke!')
    end

    it 'shifts letters based on a negative secret key' do
      @cipher = Cipher.new(-2)
      expect(@cipher.translate('c')).to eq('a')
    end

    it 'shifts letters based on a positive secret key' do
      @cipher = Cipher.new(2)
      expect(@cipher.translate('c')).to eq('e')
    end
  end
end

