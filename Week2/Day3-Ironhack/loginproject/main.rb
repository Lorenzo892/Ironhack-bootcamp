require 'sinatra'
require 'sinatra/reloader'
load 'lib/class.rb'
require 'pry'

enable(:sessions)

get "/" do
  "First web"
end

get '/login' do
  erb :login
end

post '/validate' do
  session[:username] = params[:username]
  @username = params[:username]
  @password = params[:password]
  login = session[:username]

  @user = Validator.new(@username, @password)
  @valid= @user.validate

  if @valid == true
    erb :correct
  elsif @valid == false
    erb :incorrect
  end
end

post '/incorrect' do
  redirect to ('/login')
end

get '/logout' do
  session.clear
    redirect to ('/login')
end

get '/signup' do
  erb :signup
end

post '/register' do
  @username = params[:name]
  @lastmane = params[:lastname]
  @city = params[:city]

  redirect to ('/login')
end
