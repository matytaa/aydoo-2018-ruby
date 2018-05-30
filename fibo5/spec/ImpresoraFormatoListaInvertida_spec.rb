require 'rspec'
require_relative '../model/ImpresoraFormatoListaInvertida.rb'
class ImpresoraFormatoListaInvertidaSpec
	describe 'ImpresoraFormatoListaInvertida' do
		impresora = ImpresoraFormatoListaInvertida.new
		it 'deberia retornar un json con id lista y todos sus elementos' do
			array_fibo = [0,1,1,2,3,5,8,13]
			resultado = impresora.imprimir(array_fibo)
			un_hash = {"lista" => [13,8,5,3,2,1,1,0]}
			resultado_hash = JSON.parse(resultado)
			expect(resultado_hash).to include(un_hash)
		end
	end
end