require 'sinatra'
require 'sinatra/reloader'
# require './views/index'

get '/' do
  erb :index, :locals => {number: rand(100)}
end
