class ChangeStringFromReviews < ActiveRecord::Migration[5.0]
  def change
    change_column :reviews, :body, :text, null: true
  end
end
