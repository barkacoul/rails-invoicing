class AddUtilisateurIdToFournisseur < ActiveRecord::Migration
  def change
    add_column :fournisseurs, :utilisateur_id, :integer
    add_index  :fournisseurs, :utilisateur_id
  end
end
