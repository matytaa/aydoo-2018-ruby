require_relative './Lechero.rb'
require_relative './Cafetero.rb'

class HacedorDeCafe
	def initialize ()
		@mi_cafetero = Cafetero.new
		@mi_lechero = Lechero.new
	end

	def hacer_cafe_con_leche(un_vaso)
		@mi_cafetero.poner_cafe(un_vaso)
		@mi_lechero.poner_leche(un_vaso)
	end
end