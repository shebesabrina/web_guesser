require 'sinatra'
require 'sinatra/reloader'
SECRET_NUM = rand(100)
get '/' do
  erb :index, :locals => {:number => SECRET_NUM }
end

post '/' do
  guess = params['guess'].to_i
  feedback = ''
  if guess == SECRET_NUM
    feedback = "correct"
  elsif guess <= SECRET_NUM
    feedback = "too low"
  elsif guess >= SECRET_NUM
    feedback = "too high"
  end
  erb :index, :locals => {
                          :number => SECRET_NUM,
                          :guess => guess,
                          :feedback => feedback
                        }
end
