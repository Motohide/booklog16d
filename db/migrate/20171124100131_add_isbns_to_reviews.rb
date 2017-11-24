class AddIsbnsToReviews < ActiveRecord::Migration[5.0]
  def change
    add_column :reviews, :isbn, :string
  end
end
