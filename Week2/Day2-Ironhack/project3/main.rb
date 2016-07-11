require "sinatra"
require 'sinatra/reloader'
load 'lib/clase.rb'

get "/add" do
  erb :add
end

post '/calculate' do
  operation = params[:operation]
  @first = params[:first_number].to_f
  @second = params[:second_number].to_f

  @system = Calculator.new(@first, @second)

  case operation
  when 'addition'
    @result =@system.add
  when 'multiply'
    @result =@system.multiply
  when 'substract'
    @result =@system.substract
  when 'divide'
    @result =@system.divide
  end


  erb :result
  #{}"#{first} + #{second} = #{result}"
  #redirect to("/result_add?resultado=#{result}&first=#{first}&second=#{second}")
end

post '/store' do
  operation = params[:operation]
  @result = params[:result].to_f

  case operation
  when 'store'
    IO.write("result.txt", @result)
  end

  redirect to ('/add')

end
