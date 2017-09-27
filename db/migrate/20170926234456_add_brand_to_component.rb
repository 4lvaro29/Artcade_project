class AddBrandToComponent < ActiveRecord::Migration[5.0]
  def change
    add_reference :components, :brand, foreign_key: true
  end
end
