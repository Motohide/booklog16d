class RemoveColumnsFromReviews < ActiveRecord::Migration[5.0]
  def change
    remove_column :reviews, :user_id
    remove_column :reviews, :product_id
  end
end
