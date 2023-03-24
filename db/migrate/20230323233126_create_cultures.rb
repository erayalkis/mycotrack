class CreateCultures < ActiveRecord::Migration[7.0]
  def change
    create_table :cultures do |t|
      t.string :species, null: false
      t.string :strain
      t.string :source
      t.timestamps
    end
  end
end
