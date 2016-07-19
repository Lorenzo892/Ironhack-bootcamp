class SandwichViewsController < ApplicationController

  def index
    @sandwiches = Sandwich.all
  end

  def show
    @sandwich = Sandwich.find_by(id: params[:id])
    @ingredients= Ingredient.all
  end

  def add_ingredient
    my_sandwich = Sandwich.find_by(id: params[:id])
    my_ingredient = Ingredient.find_by(id: params[:ingredient])
    my_sandwich.ingredients.push(my_ingredient)

    render json: my_ingredient
  end
end
