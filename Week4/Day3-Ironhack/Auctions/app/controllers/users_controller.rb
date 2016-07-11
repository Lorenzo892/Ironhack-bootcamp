class UsersController < ApplicationController

  def login
    @login_user
  end

  def validate_login

  end

  def index
    @users = User.all
  end
  def show
    @new_user= User.find_by(id: params[:id])
  end

  def destroy
  end

  def new
    @new_user= User.new
  end

  def create
    @new_user = User.new(name: params[:user][:name],
                         email: params[:user][:email],
                         password: params[:user][:password])
    if @new_user.save
  redirect_to "/"
    else
      redirect_to new_user
    end
  end
end
