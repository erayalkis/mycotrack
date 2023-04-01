class AddUserIdColumnToTables < ActiveRecord::Migration[7.0]
  def change
    add_column :spawns,   :user_id, :integer, null: false
    add_column :blocks,   :user_id, :integer, null: false
    add_column :cultures, :user_id, :integer, null: false
  end
end
