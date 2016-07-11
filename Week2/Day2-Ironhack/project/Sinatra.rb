require 'sinatra'
require 'sinatra/reloader'

enable(:sessions)

get '/about' do

  erb :about
end


get '/' do
  'First web'
end

get "/hi" do
  @name = session[:username]
  erb :hi
end

get "/fruits" do
  @fruits = %w(oranges lemons apples)
  erb :fruits
end

get '/users/:username' do
  session[:username] = params[:username]
  @username = session[:username]
  erb :users
end

get '/hours/ago/:hours/:name' do
  @hours = params[:hours]
  @name = params[:name]
  @time = Time.now - (@hours.to_i)*3600
  erb :hours
end
