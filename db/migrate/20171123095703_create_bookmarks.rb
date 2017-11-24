class CreateBookmarks < ActiveRecord::Migration[5.0]
  def change
    create_table :bookmarks do |t|
      t.references :user, foreign_key: true
      t.string :isbn
      t.timestamps
    end
    add_column :reviews, :isbn, :string
  end
end
