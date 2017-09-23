class AddApprovedToPrayers < ActiveRecord::Migration[5.0]
  def change
    add_column :prayers, :approved, :boolean, default: false
  end
end
