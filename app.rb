require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end

  get '/square/:number' do
    @number = (params[:number].to_i ** 2).to_s
    "#{@number}"
  end

  get '/say/:number/:phrase' do
    creed = ""
    params[:number].to_i.times do creed += params[:phrase]
    end
    creed
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    nr1 = params[:number1].to_i 
    nr2 = params[:number2].to_i
   
    case params[:operation]
    when 'add'
    result = (nr1 + nr2).to_s
    when 'subtract'
    result = (nr1 - nr2).to_s
    when 'multiply'
    result = (nr1 * nr2).to_s
    when 'divide'
    result = (nr1 / nr2).to_s
    end
  end
end