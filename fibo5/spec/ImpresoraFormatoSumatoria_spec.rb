require 'rspec'
require_relative '../model/ImpresoraFormatoSumatoria.rb'
class ImpresoraFormatoSumatoriaSpec
	describe 'ImpresoraFormatoSumatoria' do
		impresora = ImpresoraFormatoSumatoria.new
		it 'deberia retornar un json con id sumatoria con un elemento' do
			array_fibo = [0,1,1,2,3]
			un_hash = {"sumatoria" => 7}
			resultado = impresora.imprimir(array_fibo)
			resultado_hash = JSON.parse(resultado)
			expect(resultado_hash).to include(un_hash)
		end
	end
end