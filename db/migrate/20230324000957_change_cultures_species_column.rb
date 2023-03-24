class ChangeCulturesSpeciesColumn < ActiveRecord::Migration[7.0]
  def change
    change_column :cultures, :species, :string, :null => false
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
