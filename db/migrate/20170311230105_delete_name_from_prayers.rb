class DeleteNameFromPrayers < ActiveRecord::Migration[5.0]
  def change
    remove_column :prayers, :name
  end
end
