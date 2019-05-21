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
    case @operation
    when "add"
      "add"
    when "subtract"
      #sub
    when "divide"
      #divide
    when "multiply"
      #multiply
    end
  end

end
