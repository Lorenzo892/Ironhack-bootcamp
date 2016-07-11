
require 'rspec'
require './FizzBuzz1.rb'

describe 'FizzBuzz' do
  describe '#calculate' do
    it 'returns the same number if input is not divisble by 3 o 5' do
      result = FizzBuzz.new.calculate(1)
      expect(result).to eq(1)
    end
    it 'returns Fizz if input is 3' do
      result = FizzBuzz.new.calculate(3)
      expect(result).to eq("Fizz")
    end
    it 'returns the Buzz if input 5' do
      result = FizzBuzz.new.calculate(5)
      expect(result).to eq("Buzz")
    end

  end
end
