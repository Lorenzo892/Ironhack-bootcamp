
require 'rspec'
require './string_calculation_rb.rb'

describe 'StringCalculator' do
  describe '#add' do
    it 'returns 0 for no numbers' do
      result = StringCalculator.new.add('')
      expect(result).to eq(0)
    end

    it 'returns 6 for 1,2,3' do
      result = StringCalculator.new.add('1,2,3')
      expect(result).to eq(6)
    end
  end
end






# require 'rspec'
# require './string_calculation_rb.rb'
#
#
# describe 'StringCalculator' do
#   describe '#add' do
#
#     it 'returns 2 for no numbers' do
#       result = StringCalculator.new.add('')
#       expected (result).to eq(0)
#     end
#   end
# end
