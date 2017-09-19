class DropUsers < ActiveRecord::Migration
  def change
    drop_table :users
    drop_table :orders
  end
end
