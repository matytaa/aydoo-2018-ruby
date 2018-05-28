require 'rspec'
require_relative '../model/CalcularFibonacci.rb'
class CalcularFibonacciSpec
        describe 'CalcularFibonacci' do
                fibo = CalcularFibonacci.new
                it 'deberia dar 1 el fibo de 0' do
                        resultado = fibo.calcular(0)
                        expect(resultado.size).to eq 1
                end

                it 'el tamaño del Hash para 3 debería ser 4' do
                        resultado = fibo.calcular(3)
                        expect(resultado.size).to eq 4
                end
        end
end