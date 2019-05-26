require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
get '/reversename/:name' do 
  @name=params[:name]
  @name.reverse
end 
get '/square/:number' do 
  @number = params[:number].to_i
  @square= @number * @number 
  @square.to_s 
  end 
  get '/say/:number/:phrase' do 
    @number = params[:number].to_i
    @phrase = params[:phrase]
    phrase=[]
    @number.times { |x| phrase << @phrase} 
    phrase.join(" ")
     end 
   get '/say/:word1/:word2/:word3/:word4/:word5'
    @word_1 = params[:word1]
    @word_2 = params[:word2]
    @word_3 = params[:word3]
    @word_4 = params[:word4]
    @word_5 = params[:word5] 
    "#{@word_1} #{@word_2} #{@word_3} #{@word_4} #{@word_5}."
end
get '/:operation/:number1/:number2'
 @operation = params[:operation]
    @num_1 = params[:number1].to_i
    @num_2 = params[:number2].to_i
    erb :operation

end 