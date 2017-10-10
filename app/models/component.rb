class Component < ApplicationRecord
	#Relations
	belongs_to :brand
	has_many :component_arcade
	has_many :arcades, through: :component_arcade

    MONITORES = 1
    PALANCAS = 2
    BOTONES = 3
    MEMORIAS = 4
    EMULADORES = 5
    OTROS_ACCESORIOS = 6
    PLACA_MADRE = 7
    RETRO_PIE = 8
    MUEBLE_ARCADE = 9
    MICROSWITCH = 10
    CABLES = 11
	
end
