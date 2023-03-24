class CreateBlocks < ActiveRecord::Migration[7.0]
  def change
    create_table :blocks do |t|
      t.integer :spawn_id, :null => false
      t.string :substrate, :null => false
      t.timestamps
    end
  end
end
