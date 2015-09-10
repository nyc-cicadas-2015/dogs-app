class AddPasswordHashToUser < ActiveRecord::Migration
  def change
    add_column :users, :password_hash, :string, null: false
  end
end
