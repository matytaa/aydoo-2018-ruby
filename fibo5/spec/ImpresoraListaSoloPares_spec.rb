require 'rspec'
require_relative '../model/ImpresoraListaSoloPares.rb'
class ImpresoraListaSoloParesSpec
	describe 'ImpresoraListaSoloPares' do
		impresora = ImpresoraListaSoloPares.new
		it 'deberia retornar un json con id lista y todos sus elementos' do
			array_fibo = [0,1,1,2,3,5,8,13]
			resultado = impresora.imprimir(array_fibo)
			puts resultado
			un_hash = {"lista" => [0,2,8]}
			resultado_hash = JSON.parse(resultado)
			expect(resultado_hash).to include(un_hash)
		end
	end
end