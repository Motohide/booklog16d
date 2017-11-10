class AddDefaultValueToUsers < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :admin, :boolean, default: 0
  end
end
