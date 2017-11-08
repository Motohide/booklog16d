class ChangeDatatypeReleaseDateOfProducts < ActiveRecord::Migration[5.0]
  def change
    change_column :products, :release_date, :date
  end
end
