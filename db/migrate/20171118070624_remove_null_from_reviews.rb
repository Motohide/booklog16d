class RemoveNullFromReviews < ActiveRecord::Migration[5.0]
  def change
    change_column :reviews, :rate, :integer, null: true
  end
end
