class DeleteNameFromPrayers < ActiveRecord::Migration
  def change
    remove_column :prayers, :name
  end
end
