require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @rev_name = params[:name].reverse
    "#{@rev_name}"
  end

  get '/square/:number' do
    @square = params[:number].to_i ** 2
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]

    erb :say
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @params = params

    erb :say_words
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    case @operation
    when "add"
      "#{@num1 + @num2}"
    when "subtract"
      "#{@num1 - @num2}"
    when "divide"
      "#{@num1 / @num2}"
    when "multiply"
      "#{@num1 * @num2}"
    end
  end

end
