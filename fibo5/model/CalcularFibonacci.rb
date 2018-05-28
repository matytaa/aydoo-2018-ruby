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
		(0..un_numero).each do |contador|
			una_clave = 'item-' + contador.to_s
			hash_parcial = Hash.new
			hash_parcial[una_clave] = valor_fibo(contador)
  			@listaDeValores = @listaDeValores.merge(hash_parcial)
		end
		return @listaDeValores
	end	
end