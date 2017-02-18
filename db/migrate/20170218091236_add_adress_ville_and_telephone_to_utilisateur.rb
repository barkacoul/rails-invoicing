class AddAdressVilleAndTelephoneToUtilisateur < ActiveRecord::Migration
  def change
    add_column :utilisateurs, :ville, :string
    add_column :utilisateurs, :adresse, :string
    add_column :utilisateurs, :telephone, :string
  end
end
