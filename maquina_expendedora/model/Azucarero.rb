require_relative './Vaso.rb'
class Azucarero
	def poner_azucar(un_vaso, cantidad_azucar)
		una_sustancia = {azucar: cantidad_azucar}
		un_vaso.poner_sustancia(una_sustancia)
	end
end