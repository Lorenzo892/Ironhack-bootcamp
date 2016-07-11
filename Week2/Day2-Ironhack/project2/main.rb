require 'sinatra'
require 'sinatra/reloader'
require 'artii'


get '/' do
  'This is the main page'
end

get '/ascii/:random_word/?:font?' do
  @random = params[:random_word]
  @font = params[:font] || 'alligator'

  if @random=='horse' && @font == 'special'
    erb :special
  else
    erb :word
  end
end
