class AddImageToComponent < ActiveRecord::Migration[5.0]
  def change
    add_column :components, :image, :string
  end
end
