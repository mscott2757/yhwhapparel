class CreatePrayers < ActiveRecord::Migration
  def change
    create_table :prayers do |t|
      t.string :name
      t.string :prayer

      t.timestamps
    end
  end
end
