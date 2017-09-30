class AddImageToArcade < ActiveRecord::Migration[5.0]
  def change
    add_column :arcades, :image, :string
  end
end
