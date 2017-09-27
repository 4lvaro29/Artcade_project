class CreateComponents < ActiveRecord::Migration[5.0]
  def change
    create_table :components do |t|
      t.string :name
      t.integer :price
      t.integer :stock

      t.timestamps
    end
  end
end
