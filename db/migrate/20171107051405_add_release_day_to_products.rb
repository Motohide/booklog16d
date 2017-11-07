class AddReleaseDayToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :release_day, :integer
  end
end
