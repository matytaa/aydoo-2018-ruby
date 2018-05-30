require 'sinatra'
require 'json'
require_relative './model/Fibonacci'
require_relative './model/AnalizdorDeParametros'

def buscarParametros(params)
	
    tipo_impresora = params[:sentido].to_s
    numero_impresora = -1
    if tipo_impresora == "inverso" || tipo_impresora == "directo"
    	numero_impresora = 1
	    if tipo_impresora == "inverso"
	    	numero_impresora = 3
	    end
	end

    tipo_impresora = params[:solo].to_s    
    if tipo_impresora == "pares"
    	numero_impresora = 2
    end
    return numero_impresora
end

get '/fibonacci/:id' do
 	numero = params
  	if numero[:id]
    	un_numero = numero[:id].to_i
    end


    numero_impresora = buscarParametros(params)

    if un_numero < 0 || numero_impresora < 0
    	un_hash = {"error"=>"Opción no válida"}
		resultado_hash = un_hash.to_json
    	return resultado_hash
    end

	fibo = Fibonacci.new(un_numero)
  	resultado = fibo.imprimir(numero_impresora)
end

get '/fibonacci/:id/lista' do
 	numero = params
  	if numero[:id]
    	un_numero = numero[:id].to_i
    end

    numero_impresora = 1

    if un_numero < 0 || numero_impresora < 0
    	un_hash = {"error"=>"Opción no válida"}
		resultado_hash = un_hash.to_json
    	return resultado_hash
    end


	fibo = Fibonacci.new(un_numero)
  	resultado = fibo.imprimir(1)
end	

get '/fibonacci/:id/sumatoria' do
 	numero = params
  	if numero[:id]
    	un_numero = numero[:id].to_i
    end


    numero_impresora = 4

    if un_numero < 0 || numero_impresora < 0
    	un_hash = {"error"=>"Opción no válida"}
		resultado_hash = un_hash.to_json
    	return resultado_hash
    end

	fibo = Fibonacci.new(un_numero)
  	resultado = fibo.imprimir(4)
end