class AddColumnsToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :username, :string
    add_column :users, :avatar, :string
    add_column :users, :bio, :text
    add_column :users, :admin, :boolean, default: false
  end
end
