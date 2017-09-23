class DeleteDateFromPrayer < ActiveRecord::Migration[5.0]
  def change
    remove_column :prayers, :date
  end
end
