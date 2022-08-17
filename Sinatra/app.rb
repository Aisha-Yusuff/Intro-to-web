require 'sinatra'
require 'sinatra/reloader'

get '/' do 
  return "hello!"
end

get '/secret' do 
  "Secret folder"
end

get "/pair" do 
  "Aisha and Saif"
end 

get '/random-cat' do 
  @name = ["Amigo", "Misty", "Almond"].sample
  erb :index
#  "<img src=https://i.imgur.com/jFaSxym.png>"
end 

get '/cat-form' do 
  p params
  erb :cat_form
end 

post '/named-cat' do 
  p params
  @name = params[:name]
  erb :index
end 
