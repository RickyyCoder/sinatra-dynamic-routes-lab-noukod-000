require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end

  
   get "/square/:number" do
    @result = params[:number].to_i*params[:number].to_i
    "#{@result}"
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do 
  "#{params[:word1]} + #{params[:word2]} + #{params[:word3]}+ #{params[:word4]}+ #{params[:word5]}."
  end 
  
  get '/say/:number/:phrase' do
    @product = ""
    params[:number].to_i.times do 
    @product += params[:phrase] + "\n"
    end
    "#{@product}"
  end
  
  
  
end