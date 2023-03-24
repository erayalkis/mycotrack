class CreateHistories < ActiveRecord::Migration[7.0]
  def change
    create_table :histories do |t|
      t.string :title
      t.text :content
      t.references :historyable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
