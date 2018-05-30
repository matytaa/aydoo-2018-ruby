require_relative '../model/ImpresoraFormatoLista.rb'
require_relative '../model/ImpresoraListaSoloPares.rb'
require_relative '../model/ImpresoraFormatoSumatoria.rb'
require_relative '../model/ImpresoraFormatoListaInvertida.rb'

class Impresora

  	def imprimir(tipo_impresora, un_array)
  		resultado = nil
  		un_hash = {'limite' => un_array.size}
  		if tipo_impresora == 1
  			resultado = ImpresoraFormatoLista.new.imprimir(un_array)
  		elsif tipo_impresora == 2
  			puts 'puto'
  			resultado = ImpresoraListaSoloPares.new.imprimir(un_array)
  		elsif tipo_impresora == 3
  			resultado = ImpresoraFormatoListaInvertida.new.imprimir(un_array)
  		elsif tipo_impresora == 4
  			resultado = ImpresoraFormatoSumatoria.new.imprimir(un_array)
  		end
  		un_hash = un_hash.merge(JSON.parse(resultado))
  		return un_hash
  	end
end