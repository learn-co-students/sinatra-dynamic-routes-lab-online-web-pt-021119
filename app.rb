require 'pry'
require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end

  get '/square/:number' do
    @num = params[:number].to_i ** 2
    "#{@num}"
  end

  get '/say/:number/:phrase' do
    output = ""
    @phrase = params[:phrase]
    (params[:number].to_i).times {output += "#{@phrase}\n"}
    output
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    case params[:operation]
    when "add"
      @result = params[:number1].to_i + params[:number2].to_i
      "#{@result}"
    when "subtract"
      @result = params[:number1].to_i - params[:number2].to_i
      "#{@result}"
    when "multiply"
      @result = params[:number1].to_i * params[:number2].to_i
      "#{@result}"
    when "divide"
      @result = params[:number1].to_i / params[:number2].to_i
      "#{@result}"
    end
  end

end
