#
# class Vehicle
#
#   def initialize (wheels, noise)
#     @wheels = wheels
#     @noise = noise
#   end
#
#   def make_noise
#     @noise
#   end
# end


class Cardealer
  def initialize (inventory)
    @inventory = inventory
  end

  def cars (brand)
    @inventory[brand.to_sym].each do |model|
      puts model
    end

  end

end


inventory = {
  :Ford => ["Fiesta", "Mustang"],
  :Audi => ["A4", "A6"]
}

carDealer = Cardealer.new(inventory)

carDealer.cars("Audi")
