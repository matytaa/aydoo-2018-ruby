require 'rspec'
require_relative '../model/ImpresoraFormatoLista.rb'
class ImpresoraFormatoListaSpec
	describe 'ImpresoraFormatoLista' do
		impresora = ImpresoraFormatoLista.new
		it 'deberia retornar un json con id lista y todos sus elementos' do
			array_fibo = [0,1,1,2,3,5,8,13]
			un_hash = {"lista" => array_fibo}
			resultado = impresora.imprimir(array_fibo)
			resultado_hash = JSON.parse(resultado)
			expect(resultado_hash).to include(un_hash)
		end
	end
end