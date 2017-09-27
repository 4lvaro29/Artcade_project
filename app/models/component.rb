class Component < ApplicationRecord
	belongs_to :brand
	has_many :component_arcade
	has_many :arcades, through: :component_arcade
end
