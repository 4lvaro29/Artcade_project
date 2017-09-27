class CreateComponentArcades < ActiveRecord::Migration[5.0]
  def change
    create_table :component_arcades do |t|
      t.references :arcade, foreign_key: true
      t.references :component, foreign_key: true

      t.timestamps
    end
  end
end
