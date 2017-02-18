class AddColumToFactures < ActiveRecord::Migration
  def change
    add_column :factures, :tva_id, :integer
      add_index :factures, :tva_id
  end
end
