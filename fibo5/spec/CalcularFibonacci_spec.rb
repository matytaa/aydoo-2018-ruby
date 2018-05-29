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

                it 'el item-5 deberia ser 5' do
                        resultado = fibo.calcular(5)
                        un_numero = resultado['item-5']
                        expect(un_numero).to eq 5
                end

                it 'el item-6 deberia ser 8' do
                        resultado = fibo.calcular(8)
                        un_numero = resultado['item-6']
                        expect(un_numero).to eq 8
                end

                it 'el item-8 deberia ser 21' do
                        resultado = fibo.calcular(8)
                        un_hash = 'item-'+8.to_s
                        un_numero = resultado[un_hash]
                        expect(un_numero).to eq 21
                end

                it 'el resultado deberia ser nulo' do
                        resultado = fibo.calcular(-5)
                        expect(resultado).to eq nil
                end
        end
end