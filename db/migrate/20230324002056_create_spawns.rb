class CreateSpawns < ActiveRecord::Migration[7.0]
  def change
    create_table :spawns do |t|
      t.string :substrate, :null => false
      t.integer :culture_id, :null => false
      t.timestamps
    end
  end
end
