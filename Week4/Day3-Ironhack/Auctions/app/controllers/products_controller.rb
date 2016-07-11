class ProductsController < ApplicationController

  def index
    @user= User.find(params[:user_id])
    @products = @user.products
  end

  def new
    @user= User.find(params[:user_id])
    @products = @user.products.new
  end

  def create
    @user= User.find(params[:user_id])
    @products = @user.products.create(
    title: params[:product][:title],
    description: params[:product][:description],
    deadline: params[:product][:deadline],
    minimum_bet: params[:product][:minimum_bet])
    if @products
      redirect_to action: 'index',
      controller: "products",
      project_id: @user.id
    else
      render "new"
    end
  end

  def show
    @user = User.find(params[:user_id])
    @product = Product.find(params[:id])
  end

end
