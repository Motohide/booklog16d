class ChangeColumnsFromReviews < ActiveRecord::Migration[5.0]
  def change
    remove_index :reviews, :product_id
    remove_reference :reviews, :product
  end
end
