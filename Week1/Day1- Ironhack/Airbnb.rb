class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

homes = [
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Ariel's place", "San Juan", 4, 49)
]
# puts homes[0].name
# puts homes[1].name
# puts homes[2].name
# puts homes[3].name
# puts homes[4].name

# homes.each do |hm|
#   puts "\n#{hm.name} in #{hm.city} \nPrice: $#{hm.price} a night"
# end

def printall (array)
  array.each do |item|
    puts "#{item.name}  |  #{item.city}  |  #{item.capacity}  | #{item.price}"
  end
end

# Create an empty array
cities = []
# Push each home's city into the array
homes.each do |hm|
  cities.push(hm.city)
end

puts cities

homes.each_with_index do |hm, index|
  puts "Home Number #{index + 1}: #{hm.name}"
end

sorted_homes = homes.sort do |hm|
  hm.price
end

printall (sorted_homes)

place = gets.chomp

filtered_homes = homes.select do |hm|
  hm.city == place
end

printall (filtered_homes)

sum_homes = filtered_homes.reduce(0) do |sum, hm|
  sum + hm.price
end

average = sum_homes/filtered_homes.length

puts average

puts " introduce  price"

selected_price = gets.chomp.to_i

#selected_price.to_i

find_homes = homes.find do |hm|
  hm.price == selected_price
end

puts find_homes.name
#printall (find_homes)
