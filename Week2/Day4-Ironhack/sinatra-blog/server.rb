require 'sinatra'
require 'sinatra/reloader'
require './lib/models/blog.rb'
require './lib/models/post.rb'
require 'pry'





  blog = Blog.new
  blog.add_post Post.new("First Post", Date.new(2016, 03, 12), " posting for the first time")
  blog.add_post Post.new(" Third Post", Date.new(2016, 05, 12), " posting for the 3 time")
  blog.add_post Post.new("4 Post", Date.new(2016, 05, 13), " posting for the 4 time")
  blog.add_post Post.new(" 6 Post", Date.new(2016, 05, 15), " posting for the 6 time")
  blog.add_post Post.new("7 Post", Date.new(2016, 05, 16), " posting for the 7 time")
  blog.add_post Post.new(" 9 Post", Date.new(2016, 11, 12), " posting for the 9 time")

get '/' do
 @all_post= blog.latest_posts

  erb :home
end

get '/details/:number' do
@post_number = params[:number].to_i
@all_post = blog.latest_posts
erb :details

end

post 'newpost'
end
