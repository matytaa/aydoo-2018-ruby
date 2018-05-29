require 'rspec'
require_relative '../model/Fibonacci.rb'
require_relative '../model/CalcularFibonacci.rb'
class FibonacciSpec
    describe 'Fibonacci' do
        calculador = Fibonacci.new(5)
        it 'deberia ser 5 el tamaño del fibo de 5' do
            un_numero = calculador.get_numero()
            fibo = CalcularFibonacci.new
            resultado = fibo.calcular(un_numero)
            expect(resultado.size).to eq 5
        end
    end
end