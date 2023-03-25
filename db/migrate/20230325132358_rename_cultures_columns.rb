class RenameCulturesColumns < ActiveRecord::Migration[7.0]
  def change
    rename_column :cultures, :species, :genus
    rename_column :cultures, :strain, :species
  end
end
