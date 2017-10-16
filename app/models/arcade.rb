class Arcade < ApplicationRecord
  #Relations
  belongs_to :order
  belongs_to :design
  belongs_to :user
  has_many :component_arcade
  has_many :components, through: :component_arcade

  #Carrierwave
  mount_uploader :image, PhotoUploader
  

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

    def set_price
      total_components = components.sum(:price)
      total = total_components + design.price
      update(price: total)
    end
  
end
  
