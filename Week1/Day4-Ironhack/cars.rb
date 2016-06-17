
class Vehicle
  attr_reader :wheels, :noise
  def initialize (wheels, noise)
    @wheels = wheels
    @noise = noise
  end

  def make_noise
    @noise
  end
end

class VehicleHandeler
  def initialize (array)
    @array = array

  end

  def count_wheels
    total_weels =@array.reduce(0) do |sum, vehicle|
      sum += vehicle.wheels
    end
  end

  def make_noise
    @array.each do |noise|
      puts noise.make_noise
    end
  end

  end

seat = Vehicle.new(4,"BROOUM")
mercedes = Vehicle.new(4, "bruuuuummmmmm")
bmw = Vehicle.new(2, "BRUUOOOOM")

vehicle_array = [seat, mercedes, bmw]
handler = VehicleHandeler.new(vehicle_array)

puts handler.count_wheels
handler.make_noise
