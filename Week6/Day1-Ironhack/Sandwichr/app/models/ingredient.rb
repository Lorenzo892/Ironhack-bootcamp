class Ingredient < ApplicationRecord
  has_many :sandwiches, :through => :sandwich_ingredient
end
