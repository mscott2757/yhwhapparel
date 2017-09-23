class AddDateToPrayer < ActiveRecord::Migration[5.0]
  def change
    add_column :prayers, :date, :date
  end
end
