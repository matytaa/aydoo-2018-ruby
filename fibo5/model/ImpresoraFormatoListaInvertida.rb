require 'json'

class ImpresoraFormatoListaInvertida
	def imprimir(array_fibo)
		un_hash = {"lista" => array_fibo.sort.reverse}
		return un_hash.to_json
	end
end