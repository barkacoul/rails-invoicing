class AddColumnToFactureProduits < ActiveRecord::Migration
  def change
    add_column :facture_produits, :prix_unitaire, :float
  end
end
