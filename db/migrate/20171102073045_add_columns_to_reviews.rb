class AddColumnsToReviews < ActiveRecord::Migration[5.0]
  def change
    add_reference :reviews, :user, index: true
    add_reference :reviews, :product, index: true
  end
end
