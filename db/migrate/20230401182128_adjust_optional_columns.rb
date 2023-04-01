class AdjustOptionalColumns < ActiveRecord::Migration[7.0]
  def change
    change_column_null :spawns, :culture_id, true
    change_column_null :blocks, :spawn_id, true
  end
end
