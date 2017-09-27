class Order < ApplicationRecord
  
  # Relations
  belongs_to :user
  has_many :arcades
end
