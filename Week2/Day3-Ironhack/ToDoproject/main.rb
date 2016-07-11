#Inside of server.rb
require 'sinatra'
require 'sinatra/reloader'
# We're going to need to require our class files)
require_relative('lib/ToDoList.rb')

get '/home' do

  task1 = Task.new("Buy the milk")
  task2 = Task.new("Wash the car")
  day_tasks= Todo.new
  day_tasks.add_tasks (task1)
  day_tasks.add_tasks (task2)
  @lista = day_tasks.list
  erb :task_index
end
