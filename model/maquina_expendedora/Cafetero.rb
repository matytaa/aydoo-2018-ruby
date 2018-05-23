require_relative './Vaso.rb'
class Cafetero
	def poner_cafe(un_vaso)
		una_sustancia = {cafe: 1}
		un_vaso.poner_sustancia(una_sustancia)
	end
end