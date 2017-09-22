class AddApprovedToPrayers < ActiveRecord::Migration
  def change
    add_column :prayers, :approved, :boolean, default: false
  end
end
