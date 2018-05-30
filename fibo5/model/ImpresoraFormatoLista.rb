require 'json'

class ImpresoraFormatoLista
	def imprimir(array_fibo)
		un_hash = {"lista" => array_fibo}
		return un_hash.to_json
	end
end