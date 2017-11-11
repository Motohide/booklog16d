class RenameColumnsFromUsers < ActiveRecord::Migration[5.0]
  def change
    rename_column :users, :prefecture, :prefecture_code
  end
end
