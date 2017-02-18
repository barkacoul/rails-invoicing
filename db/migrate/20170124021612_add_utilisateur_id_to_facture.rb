class AddUtilisateurIdToFacture < ActiveRecord::Migration
  def change
    add_column :factures, :utilisateur_id, :integer
    add_index :factures, :utilisateur_id
  end
end
