class Arcade < ApplicationRecord
  #Relations
  belongs_to :order
  belongs_to :design
  has_many :component_arcade
  has_many :components, through: :component_arcade

  	# Instance Methods

  	def update_arcade_components component_ids
    result = true
    component_ids.each do |id|
      component = Component.find(id)
      if component
        components << component
      else
        result = false
      end
    end
    result
  end
end
  
