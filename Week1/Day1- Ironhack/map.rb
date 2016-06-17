cities = ["miami", "madrid", "barcelona"]

cap_cities = cities.map do |city| city.capitalize end

puts cap_cities

input = [2,4,6]

output = input.reduce do |final, actual| final + actual end

puts output

ainput = [2,4,6]

eoutput = ainput.reduce (1) do |final, actual| final + actual end

puts eoutput

# .select
#Grep retours only the srings containing xx value
["casa", "mesa", "pepino"].grep(/as/)
