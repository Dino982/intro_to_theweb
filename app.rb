require 'shotgun'
require 'sinatra'

get '/' do
  "hello!"
end


get '/secret' do
  "the meaning of life = pizza spy"
end

get '/secret2' do
  "the actual meaning of life = 42"
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end


get '/named-cat' do
  p params
  @name = params[:name]
  @surname = params[:surname]
  erb(:index)
end
