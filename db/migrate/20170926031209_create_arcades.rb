class CreateArcades < ActiveRecord::Migration[5.0]
  def change
    create_table :arcades do |t|
      t.string :name
      t.integer :price
      t.references :order, foreign_key: true

      t.timestamps
    end
  end
end
