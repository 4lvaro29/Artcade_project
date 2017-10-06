class AddPriceToDesign < ActiveRecord::Migration[5.0]
  def change
    add_column :designs, :price, :integer
  end
end
