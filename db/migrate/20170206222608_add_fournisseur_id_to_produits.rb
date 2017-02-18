class AddFournisseurIdToProduits < ActiveRecord::Migration
  def change
    add_column :produits, :fournisseur_id, :integer
    add_index   :produits, :fournisseur_id
  end
end
