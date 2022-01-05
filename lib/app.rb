require 'sinatra'
require 'sinatra/reloader' #if development?


get '/' do "hello world" end
get '/secret' do "hello! ruby" end
get '/route_a' do "hello route_a" end
get '/cat' do 
  @name = %w(Amigo Misty Almond).sample
  erb(:index)
end
