class ChangeNullToUsers < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :nickname, :string, null: true
  end
end
