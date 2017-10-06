class Arcade < ApplicationRecord
  #Relations
  belongs_to :order
  has_many :component_arcade
  has_many :components, through: :component_arcade
  
end
