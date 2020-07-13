require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number * @number}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase_arr = []
    @number.times do
      @phrase_arr << params[:phrase]
    end
    @phrase = @phrase_arr.join(" ")

    "#{@phrase}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    if params[:operation] == "add"
      @answer = params[:number1].to_i + params[:number2].to_i
    elsif params[:operation] == "subtract"
      @answer = params[:number1].to_i - params[:number2].to_i
    elsif params[:operation] == "multiply"
      @answer = params[:number1].to_i * params[:number2].to_i
    elsif params[:operation] == "divide"
      @answer = params[:number1].to_i / params[:number2].to_i
    end

    "#{@answer}"
  end

end
