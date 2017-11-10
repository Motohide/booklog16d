class AddReleaseDateToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :release_date, :integer
  end
end
