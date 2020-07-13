require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
	params[:name].reverse!
  end

  get '/square/:number' do
	(params[:number].to_i**2).to_s
  end

  get '/say/:number/:phrase' do
	params[:phrase]*params[:number].to_i
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
	phrase=""
	for i in 1..5 do
		phrase += params["word#{i}"]
		phrase += " "
	end
	phrase.strip!
	phrase+= "."
  end

  get '/:operation/:number1/:number2' do
	case params[:operation]
	when "add"
		opp="+"
	when "subtract"
		opp = "-"
	when "multiply"
		opp = "*"
	when "divide"
		opp = "/"
	end
	params[:number1].to_i.send(opp,params[:number2].to_i).to_s
  end



end