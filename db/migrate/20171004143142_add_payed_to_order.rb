class AddPayedToOrder < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :payed, :boolean, default: false
  end
end
