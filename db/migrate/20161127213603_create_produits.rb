class CreateProduits < ActiveRecord::Migration
  def change
    create_table :produits do |t|
        t.string    :nom,   :limit => 100
        t.text      :description
        t.integer   :quantite
        t.float     :prix_unitaire
        t.float     :prix_de_vente
        t.float     :valeur_de_stock
        t.float     :marge_beneficiaire
      t.timestamps null: false
    end
  end
end
