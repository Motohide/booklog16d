class AddReleaseMonthToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :release_month, :integer
  end
end
