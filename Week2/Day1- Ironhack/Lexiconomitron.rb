

class Lexiconomitron # profesor
  def eat_t(word)
    word.split('').select do |char|
      char.downcase != 't'
    end.join
  end

  def shazam(words)
    words.map!(&:reverse)
    [words.first, words.last].map { |word| eat_t(word) }
  end

  def oompa_loompa(words)
    words.select { |word| word.size <= 3 }.map { |word| eat_t(word) }
  end
end














#
# class Lexiconomitron
#
#   def eat_t (string)
#     @word = string
#     #option1
#     #@word = @word.gsub("t", "")
# 
# # option 2
#     @word.split('').select do |char|
#       char.downcase != 't'
#     end.join
#
#   #  option 3
#     # @word = @word.split ("")
#     # # @newword= @word.delete_if do |item|
#     # #   item == "t"
#     # # end
#
#   end
#
#   def shazam(words)
# #words.map! {|word| words.reverse} es lo mismo que la linia de abajo
#     words.map!(&:reverse)
#     [eat_t(words.first), eat_t(words.last)].map {|word| eat_t(word)}
#   end
#
#
#   def oompa_loompa(words)
#
#   end
#
# end
