class AddAffirmsToPrayers < ActiveRecord::Migration[5.0]
  def change
    add_column :prayers, :affirms, :integer
  end
end
