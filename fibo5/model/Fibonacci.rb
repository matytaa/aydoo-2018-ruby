require_relative '../model/Impresora.rb'
require_relative '../model/CalcularFibonacci.rb'
class Fibonacci
	
	def initialize(un_numero)
    	@numero_fibo = un_numero
    	@impresora = Impresora.new
    	@calcula_fibo = CalcularFibonacci.new()
  	end

  	def get_numero()
  		return @numero_fibo
  	end

  	def ejecutar_fibo()
  		resultado = @calcula_fibo.calcular(@numero_fibo)
  	end

  	def imprimir(numero_impresora)
  		resultado = @impresora.imprimir(numero_impresora, ejecutar_fibo())
  		un_hash = {'fibonacci' => resultado}
  		return un_hash.to_json
  	end
end