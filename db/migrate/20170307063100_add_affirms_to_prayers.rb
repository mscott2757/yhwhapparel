class AddAffirmsToPrayers < ActiveRecord::Migration
  def change
    add_column :prayers, :affirms, :integer
  end
end
