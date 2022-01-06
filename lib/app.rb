require 'sinatra'
require 'sinatra/reloader' #if development?


get '/' do 
  "hello world" 
end

get '/secret' do
   "hello! ruby" 
end

get '/route_a' do
   "hello route_a" 
end

get '/random_cat' do 
  @name = %w(Amigo Misty Almond).sample
  erb(:index)
end

get '/cat_form' do
  erb :cat_form
end

post '/named_cat' do
  @name = params[:name]
  erb :index
end