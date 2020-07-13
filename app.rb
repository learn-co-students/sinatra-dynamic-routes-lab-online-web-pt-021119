require_relative 'config/environment'
require 'pry'
require 'cmath'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name].reverse!
    "#{@name}"
  end

  get '/square/:number' do
    num = params[:number].to_i
    sq = num*num
    sq_new = sq.to_s
    "#{sq_new}"
  end

  get '/say/:number/:phrase' do
  final_phrase = " "
  (params[:number].to_i).times do
  final_phrase += "#{params[:phrase]}\n"
  end
  final_phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do

    operation = params[:operation]
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
    if operation == "add"
      answer = number1 + number2
    elsif operation == "subtract"
      answer = number1 - number2
    elsif operation == "multiply"
      answer = number1 * number2
    elsif operation == "divide"
      answer = number1 / number2
    else
      answer = "Unable to perform this operation"
    end
    answer.to_s

  end

end
