require 'rspec'
require_relative '../model/Fibonacci.rb'
require_relative '../model/CalcularFibonacci.rb'
require 'json'

class FibonacciSpec
    describe 'Fibonacci' do
        calculador = Fibonacci.new(5)
        it 'deberia retornar el numero a calcular' do
            un_numero = calculador.get_numero()
            expect(un_numero).to eq 5
        end

        it 'deberia ser 5 el tamaño del fibo de 5' do
            resultado = calculador.ejecutar_fibo()
            expect(resultado.size).to eq 5
        end

        it 'deberia retornar una json estilo lista' do
			resultado = calculador.imprimir(1)
            un_hash = {"fibonacci":{"limite":5,"lista":[0,1,1,2,3]}}
			resultado_hash = JSON.parse(un_hash.to_json)
			expect(JSON.parse(resultado)).to include(resultado_hash)
        end

        it 'deberia retornar una json estilo lista solo pares' do
			resultado = calculador.imprimir(2)
            un_hash = {"fibonacci":{"limite":5,"lista":[0,2]}}
			resultado_hash = JSON.parse(un_hash.to_json)
			expect(JSON.parse(resultado)).to include(resultado_hash)
        end

        it 'deberia retornar una json estilo lista invertido' do
			resultado = calculador.imprimir(3)
            un_hash = {"fibonacci":{"limite":5,"lista":[3,2,1,1,0]}}
			resultado_hash = JSON.parse(un_hash.to_json)
			expect(JSON.parse(resultado)).to include(resultado_hash)
        end

        it 'deberia retornar una json estilo sumatoria' do
			resultado = calculador.imprimir(4)
            un_hash = {"fibonacci":{"limite":5,"sumatoria":7}}
			resultado_hash = JSON.parse(un_hash.to_json)
			expect(JSON.parse(resultado)).to include(resultado_hash)
        end
    end
end