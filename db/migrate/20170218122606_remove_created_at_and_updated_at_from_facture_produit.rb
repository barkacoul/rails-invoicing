class RemoveCreatedAtAndUpdatedAtFromFactureProduit < ActiveRecord::Migration
  def change
      remove_column :facture_produits, :created_at
      remove_column :facture_produits, :updated_at
  end
end
