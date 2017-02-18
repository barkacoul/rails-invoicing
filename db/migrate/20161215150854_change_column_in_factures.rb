class ChangeColumnInFactures < ActiveRecord::Migration
  def change
      remove_index :factures, :tva_id
       rename_column :factures, :tva_id, :tva_valeur
  end
end
