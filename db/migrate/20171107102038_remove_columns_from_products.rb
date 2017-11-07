class RemoveColumnsFromProducts < ActiveRecord::Migration[5.0]
  def change
    remove_column :products, :release_year, :integer
    remove_column :products, :release_month, :integer
    remove_column :products, :release_day, :integer
  end
end
