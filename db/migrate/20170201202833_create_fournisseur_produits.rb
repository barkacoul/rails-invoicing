class CreateFournisseurProduits < ActiveRecord::Migration
  def change
    create_table :fournisseur_produits do |t|
        t.integer   :fournisseur_id, null: false
        t.integer   :produit_id, null: false  
    end
      add_index :fournisseur_produits, :fournisseur_id
      add_index :fournisseur_produits, :produit_id
  end
end
