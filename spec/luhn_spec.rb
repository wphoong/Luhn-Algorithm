require 'spec_helper'

RSpec.describe Luhn, type: :model do
  describe 'is_valid? should work' do
    it 'should return true if the number is valid' do
      expect(Luhn.is_valid?(4_194_560_385_008_504)).to be true
    end

    it 'should return false if the number is not valid' do
      expect(Luhn.is_valid?(4_194_560_385_008_504)).to be false
    end

    it 'should give the wrong answer if you begin on the left side for valid numbers' do
      expect(Luhn.is_valid?(377_681_478_627_336)).to be true
    end

    it 'should give the wrong answer if you begin on the left for invalid numbers' do
      expect(Luhn.is_valid?(377_681_478_627_337)).to be false
    end
  end
end
