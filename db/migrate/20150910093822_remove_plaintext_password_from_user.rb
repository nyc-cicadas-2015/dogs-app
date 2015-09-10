class RemovePlaintextPasswordFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :password
  end
end
