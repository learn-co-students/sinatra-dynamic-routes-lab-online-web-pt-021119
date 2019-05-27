require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    name = params[:name]
    name.reverse
  end

  get '/square/:number' do
    number = params[:number].to_i
    "#{number * number}"
  end

  get '/say/:number/:phrase' do
    phrase = params[:phrase]
    number = params[:number].to_i
     "#{phrase * number}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
     "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
   end

   get "/:operations/:number1/:number2" do
     number1 = params[:number1]
     number2 = params[:number2]
     operations = params[:operations]

     if operations
       "#{number1 + number2}"
     elsif
       "#{number1 - number2}"
     elsif
       "#{number1 x number2}"
     else
       "#{number1 / number2}"
     end 
   end


end
