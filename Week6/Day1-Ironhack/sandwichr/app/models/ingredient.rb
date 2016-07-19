class Ingredient < ActiveRecord::Base
  has_many :sandwiches, :through => :sandwich_ingredients
  has_many :sandwich_ingredients
end
