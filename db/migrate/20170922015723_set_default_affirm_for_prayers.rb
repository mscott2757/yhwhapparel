class SetDefaultAffirmForPrayers < ActiveRecord::Migration[5.0]
  def change
    change_column :prayers, :affirms, :integer, default: 0
  end
end
