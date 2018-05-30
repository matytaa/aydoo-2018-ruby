require 'json'

class ImpresoraListaSoloPares
	def imprimir(array_fibo)
		un_hash = {"lista" => array_fibo.select { |item| item %2==0}}
		return un_hash.to_json
	end
end