require "sinatra"
require 'sinatra/reloader'
load 'lib/Validator.rb'
require 'pry'

get "/login" do
  erb :login
end

post '/validate' do

  @username = params[:username]
  @email = params[:email]
  @password = params[:password]
  # login = session[:username]

  @user = Validator.new(@username, @email)
  @valid = @user.check_password (@password)

  if @valid == true
    erb :correct
  elsif @valid == false
    erb :incorrect
  end
end
