class ChangeColumnsFromUsers < ActiveRecord::Migration[5.0]
  def change
    rename_column :users, :image, :avatar
  end
end
