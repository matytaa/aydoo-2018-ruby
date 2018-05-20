require_relative './HacedorDeCafe.rb'
require_relative './Azucarero.rb'
require_relative './Vaso.rb'

class MaquinaExpendedoraDeBebidas

  def initialize()
    @mi_hacedor_de_cafe = HacedorDeCafe.new
    @mi_azucarero = Azucarero.new
  end

  def hacer_cafe_con_leche_con_n_de_azucar(un_vaso, cantidad_azucar)
    @mi_hacedor_de_cafe.hacer_cafe_con_leche(un_vaso)
    @mi_azucarero.poner_azucar(un_vaso, cantidad_azucar)
  end

end