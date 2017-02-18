class CreateFactureProduits < ActiveRecord::Migration
  def change
    create_table :facture_produits do |t|
        t.integer   :facture_id
        t.integer   :student_id
        t.integer   :quantite

      t.timestamps null: false
    end
        add_index   :facture_produits, :facture_id
        add_index   :facture_produits, :student_id
  end
end
