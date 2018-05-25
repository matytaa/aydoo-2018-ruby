require_relative './Vaso.rb'
class Lechero
	def poner_leche(un_vaso)
		una_sustancia = {leche: 1}
		un_vaso.poner_sustancia(una_sustancia)
	end
end