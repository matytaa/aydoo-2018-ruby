require_relative './Lechero.rb'
require_relative './HacedorDeTe.rb'

class HacedorDeTeConLeche
	def initialize ()
		@mi_hacedor_de_te = HacedorDeTe.new
		@mi_lechero = Lechero.new
	end

	def hacer_te_con_leche(un_vaso)
		@mi_hacedor_de_te.poner_te(un_vaso)
		@mi_lechero.poner_leche(un_vaso)
	end
end