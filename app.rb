require_relative 'config/environment'
require 'pry'



class App < Sinatra::Base

    get '/reversename/:name' do
        #binding.pry
        @username = params[:name]
        "#{@username.reverse}"
    end


    get '/square/:number' do
        @num = params[:number].to_i
        "#{@num * @num}"
    end


    get '/say/:number/:phrase' do
        @num = params[:number].to_i
        @phrase = params[:phrase]
        erb :numphrase
    end

    get '/say/:number/:phrase' do
        @num = params[:number].to_i
        @phrase = params[:phrase]
        erb :numphrase
    end

    get '/say/:word1/:word2/:word3/:word4/:word5' do
        "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    end

    get '/:operation/:number1/:number2' do
        @num1 = params[:number1]
        @num2 = params[:number2]
        @operation = params[:operation]

        if @operation == add
            "#{@num1 + @num2}"
        elsif @operation == multiply
            "#{@num1 * @num2}"
        elsif @operation == subtract
            "#{@num1 - @num2}"
        else
            "#{@num1 / @num2}"
        end
    end

end
