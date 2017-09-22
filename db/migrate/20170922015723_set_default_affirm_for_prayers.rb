class SetDefaultAffirmForPrayers < ActiveRecord::Migration
  def change
    change_column :prayers, :affirms, :integer, default: 0
  end
end
