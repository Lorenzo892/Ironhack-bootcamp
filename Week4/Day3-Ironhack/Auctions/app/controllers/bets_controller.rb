class BetsController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    @product = Product.find(params[:product_id])
    @bets = @product.bets.new
  end

  def create
    user= User.find_by(email: params[:email])

    my_bet = Bet.new(user_id: user.id,
                      amount: params[:amount],
                      product_id: params[:product_id])
   if my_bet.save
     redirect_to user_product_bets_path
   else
     redirect_to new_user_product_bet_path
   end
  end

  def index
    @product = Product.find(params[:product_id])
    @bets = @product.bets
  end
end
