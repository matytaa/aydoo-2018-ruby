class Vaso

	def initialize()
		@sustancias = Hash.new
	end

	def poner_sustancia(una_sustancia)
		mis_sustancias = @sustancias.merge(una_sustancia)
		@sustancias = mis_sustancias
	end

	def cantidad_de_azucar()
		cantidad = 0
		if @sustancias.has_key?(:azucar) == true
			cantidad = @sustancias[:azucar]
		end
		return cantidad
	end

	def tiene_leche?()
		return @sustancias.has_key?(:leche)
	end

	def tiene_cafe?()
		return @sustancias.has_key?(:cafe)
	end

	def tiene_azucar?()
		cantidad = cantidad_de_azucar()
		return cantidad > 0
	end

	def tiene_te?()
		return @sustancias.has_key?(:te)
	end
end
