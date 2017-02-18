class ChangeColumnNameToProduitId < ActiveRecord::Migration
  def change
      rename_column :facture_produits, :produit_id, :produdit_id
      #add_index :facture_produits, :produit_id
  end
end
