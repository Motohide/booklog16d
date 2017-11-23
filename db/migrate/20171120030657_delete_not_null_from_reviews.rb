class DeleteNotNullFromReviews < ActiveRecord::Migration[5.0]
  def change
    change_column :reviews, :reading_status, :integer, null: true
    change_column :reviews, :body, :string, null: true
  end
end
