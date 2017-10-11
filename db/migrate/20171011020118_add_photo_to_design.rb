class AddPhotoToDesign < ActiveRecord::Migration[5.0]
  def change
    add_column :designs, :photo, :string
  end
end
