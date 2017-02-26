class AddUtilisateurIdToProduit < ActiveRecord::Migration
  def change
    #remove_column :produits, :utilisateur_id, :integer
    add_column :produits, :utilisateur_id, :integer
  end
end
