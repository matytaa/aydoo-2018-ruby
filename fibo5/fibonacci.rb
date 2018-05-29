require 'sinatra'
require 'json'
require_relative './model/Fibonacci'


get '/fibonacci/:id' do
 	numero = params
  	if numero[:id]
    	un_numero = numero[:id].to_i
    end

	fibo = Fibonacci.new
  	resultado = fibo.calcular(un_numero)
  	resultado.to_json
end