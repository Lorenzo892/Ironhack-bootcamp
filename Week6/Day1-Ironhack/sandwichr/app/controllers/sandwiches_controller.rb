class SandwichesController < ApplicationController
	def index
	  sandwiches = Sandwich.all
	  render json: sandwiches
	end

	def create
	  sandwich = Sandwich.create(sandwich_params)
	  render json: sandwich
	end

	def show
	  @sandwich = Sandwich.find_by(id: params[:id])
      if @sandwich

			# 	ingredients= SandwichIngredient.find_all(sandwich_id: params[:id] )
			# 	ingredients.each do |ingredient| {
			# 		@listingredients.push()
			# }

        render json: @sandwich.ingredients
      else
        render json: {error: "ingredient not found"}, status: 404
      end
		end

		def ingredient
			@my_sandwich = Sandwich.find(params[:id])
	    @my_ingredients = Ingredient.all
		end

		def add_ingredient
			my_sandwich = Sandwich.find_by(id: params[:id])
			my_ingredient = Ingredient.find_by(id: params[:ingredient])
			my_sandwich.ingredients.push(my_ingredient)
			render json: my_ingredient
		end

	def update
	  sandwich = Sandwich.find_by(id: params[:id])
	  unless sandwich
	    render json: {error: "sandwich not found"},
	    status: 404
	    return
	  end
	  sandwich.update(sandwich_params)
	  render json: sandwich
	end

	def destroy
	  sandwich = Sandwich.find_by(id: params[:id])
	  unless sandwich
	    render json: {error: "sandwich not found"},
	    status: 404
	    return
	  end
	  sandwich.destroy
	  render json: sandwich
	end


	private

	def sandwich_params
	  params.require(:sandwich)
	    .permit(:id, :name, :bread_type)
	end
end
