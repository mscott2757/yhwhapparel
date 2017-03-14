class AddDateToPrayer < ActiveRecord::Migration
  def change
    add_column :prayers, :date, :date
  end
end
