class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.integer :reading_status, null: false
      t.integer :rate, null: false
      t.string :body, null: false
      t.string :note
      t.integer :public_status
      t.integer :spoiler_status
      t.integer :user_id
      t.integer :product_id

      t.timestamps
    end
  end
end
