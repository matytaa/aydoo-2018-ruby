require 'rspec'
require_relative '../model/Fibonacci.rb'
require_relative '../model/CalcularFibonacci.rb'
class FibonacciSpec
    describe 'Fibonacci' do
        calculador = Fibonacci.new(5)
        it 'deberia retornar el numero a calcular' do
            un_numero = calculador.get_numero()
            expect(un_numero).to eq 5
        end

        it 'deberia ser 5 el tamaño del fibo de 5' do
            un_numero = calculador.get_numero()
            fibo = CalcularFibonacci.new
            resultado = fibo.calcular(un_numero)
            expect(resultado.size).to eq 5
        end
    end
end