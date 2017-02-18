class AddPrixColumnToFactureProduits < ActiveRecord::Migration
  def change
      add_column :facture_produits, :sous_total, :float
       add_index   :entreprises, :utilisateur_id
  end
end
