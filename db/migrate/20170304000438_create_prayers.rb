class CreatePrayers < ActiveRecord::Migration
  def change
    create_table :prayers do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
