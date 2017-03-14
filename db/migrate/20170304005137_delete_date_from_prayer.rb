class DeleteDateFromPrayer < ActiveRecord::Migration
  def change
    remove_column :prayers, :date
  end
end
