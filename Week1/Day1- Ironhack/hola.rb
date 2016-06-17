puts "hello world"
puts 45.zero?
puts "thugs".include? "hugs"

name = "Alberto"

puts "hello " + name + "!!!!"
puts "Hello #{name} !!!!  "

# name1 = name.to_i # converts the variable into integer
puts name.class

puts 3 / 2.00000
puts 456/ 78.000

puts "name file??"
nombre = gets.chomp

puts " what do you what inside"
contenido = gets.chomp

IO.write(nombre+".rb", contenido)
IO.read (nombre+".rb")
