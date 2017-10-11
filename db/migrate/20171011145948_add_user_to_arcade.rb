class AddUserToArcade < ActiveRecord::Migration[5.0]
  def change
    add_reference :arcades, :user, foreign_key: true
  end
end
