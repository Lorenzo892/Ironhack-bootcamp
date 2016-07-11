class BidsController < ApplicationController
  def new
    @product= Product.find(params[:product_id])
    @bid = @product.bids.new
  end
end
