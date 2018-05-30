require 'rspec'
require_relative '../model/CalcularFibonacci.rb'
class CalcularFibonacciSpec
        describe 'CalcularFibonacci' do
                fibo = CalcularFibonacci.new
                it 'deberia dar 0 el fibo de 0' do
                        resultado = fibo.calcular(0)
                        expect(resultado.size).to eq 0
                end

                it 'el tamaño del array para 3 debería ser 3' do
                        resultado = fibo.calcular(3)
                        expect(resultado.size).to eq 3
                end

                it 'el quinto item deberia ser 5' do
                        resultado = fibo.calcular(5)
                        un_numero = resultado[4]
                        expect(un_numero).to eq 3
                end

                it 'el septimo item deberia ser 8' do
                        resultado = fibo.calcular(8)
                        un_numero = resultado[6]
                        expect(un_numero).to eq 8
                end

                it 'el octavo item deberia ser 13' do
                        resultado = fibo.calcular(8)
                        un_numero = resultado[7]
                        expect(un_numero).to eq 13
                end

                it 'el resultado deberia ser nulo' do
                        resultado = fibo.calcular(-5)
                        expect(resultado).to eq nil
                end
        end
end