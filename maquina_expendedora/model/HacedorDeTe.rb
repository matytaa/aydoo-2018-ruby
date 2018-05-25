require_relative './Vaso.rb'

class HacedorDeTe
	def poner_te(un_vaso)
		una_sustancia = {te: 1}
		un_vaso.poner_sustancia(una_sustancia)
	end
end