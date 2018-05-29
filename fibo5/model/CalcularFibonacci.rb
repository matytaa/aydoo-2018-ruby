class CalcularFibonacci
	
	def initialize()
    	@listaDeValores = Hash.new
  	end
	
  	def valor_fibo(un_numero)
        if (un_numero > 1)
            return valor_fibo(un_numero-1) + valor_fibo(un_numero-2)
        elsif (un_numero==1)
            return 1
        elsif (un_numero==0)
            return 0
        else
            puts "Posición ingresada inválida"
  	        return -1
	    end
  	end

	def calcular(un_numero)
		if un_numero < 0
			return nil
		end
		array = Array.new(un_numero) { |i| valor_fibo(i)}
		return array
	end	
end