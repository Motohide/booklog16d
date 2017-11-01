class AddColumnsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :nickname, :string, null: false
    add_column :users, :gender, :integer
    add_column :users, :birth_year, :integer
    add_column :users, :birth_month, :integer
    add_column :users, :birth_day, :integer
    add_column :users, :image, :string
    add_column :users, :prefecture, :integer
    add_column :users, :hometown, :string
    add_column :users, :website, :string
    add_column :users, :biography, :string
    add_column :users, :job, :string
  end
end
