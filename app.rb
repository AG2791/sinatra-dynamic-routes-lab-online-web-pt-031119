require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  
  get '/reversename/:name' do 
     params[name].reverse
  end
  
  get '/square/:number' do 
    params[number].number**2.to_s
  end
  
    get '/say/:number/:phrase' do
    input = ''
      params[:number].to_i.times do
    input += params[:phrase]
    end
    input
    
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    
    # words = []
    
    # "params[:word1]params[:word2]params[:word3]params[:word4]params[:word5]."
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  
  end
  
  
get '/:operation/:number1/:number2' 

 number1 = params[:number1].to_i
 number2 = params[:number2].to_i

    result = ''

     params[:operation]
    if 'add'
      answer = (number1 + number2).to_s
    elsif 'subtract'
      answer = (number1 - number2).to_s
    elsif 'multiply'
      answer = (number1 * number2).to_s
    elsif 'divide'
      answer = (number1 / number2).to_s
    else 
      puts " unknown operation"
    end
  end
end


end
  
 
 
end