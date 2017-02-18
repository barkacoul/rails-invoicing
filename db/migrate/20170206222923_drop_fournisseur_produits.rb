class DropFournisseurProduits < ActiveRecord::Migration
  def change
      drop_table    :fournisseur_produits
  end
end
