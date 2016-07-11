#
#
# word_string = gets.chomp
# word_string.split(",").map {|i| Integer(i) }
# # array= word_string.split (",")
# # array.to_i
#
# def count (word)
#   @word
# array.reduce do |sum, number|
#   sum += number
# end
# end
# puts sum


class StringCalculator
  def add(numbers)
    numbers.split(',').inject(0) do |sum, x|
      sum + x.to_i
    end
  end
end
