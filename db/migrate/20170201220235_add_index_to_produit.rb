class AddIndexToProduit < ActiveRecord::Migration
  def change
    add_index   :produits, :utilisateur_id
  end
end
