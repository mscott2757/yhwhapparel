class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :fullname
      t.string :address
      t.string :email
      t.string :phonenumber
      t.integer :product_id
      t.boolean :berkeley

      t.timestamps
    end
  end
end
