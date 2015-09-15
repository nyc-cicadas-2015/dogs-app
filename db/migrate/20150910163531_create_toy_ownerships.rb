class CreateToyOwnerships < ActiveRecord::Migration
  def change
    create_join_table :dogs, :toys, table_name: :toy_ownerships
  end
end
