class AddDesignToArcade < ActiveRecord::Migration[5.0]
  def change
    add_reference :arcades, :design, foreign_key: true
  end
end
