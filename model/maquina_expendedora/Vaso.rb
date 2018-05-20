class Vaso
	def inicializate()
		@contiene_cafe = false
		@contiene_leche = false
		@contiene_te = false
		@cantidad_de_azucar = 0
	end

	def cantidad_de_azucar()
		return @cantidad_de_azucar
	end

	def poner_leche()
		@contiene_leche = true
	end

	def poner_cafe()
		@contiene_cafe = true
	end

	def poner_azucar(una_cantidad_de_azucar)
		@cantidad_de_azucar = una_cantidad_de_azucar
	end

	def tiene_cafe?()
		return @contiene_cafe
	end

	def tiene_azucar?()
		return @cantidad_de_azucar > 0
	end

	def tiene_te?()
		return @contiene_te
	end
end
