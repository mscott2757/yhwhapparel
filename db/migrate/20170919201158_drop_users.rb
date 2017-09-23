class DropUsers < ActiveRecord::Migration[5.0]
  def change
    drop_table :users
    drop_table :orders
  end
end
