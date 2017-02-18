class CreateFactures < ActiveRecord::Migration
  def change
    create_table :factures do |t|

        t.float :montant_ht,    :null => false
        t.float :montant_ttc,   :null => false
      t.timestamps null: false
    end
  end
end
