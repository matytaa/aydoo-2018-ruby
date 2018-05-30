require 'json'

class ImpresoraFormatoSumatoria
	def imprimir(array_fibo)

		resultado_sumatoria = 0
		array_fibo.each do |item|
  			resultado_sumatoria += item
		end

		un_hash = {"sumatoria" => resultado_sumatoria}
		return un_hash.to_json
	end
end