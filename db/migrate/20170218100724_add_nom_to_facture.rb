class AddNomToFacture < ActiveRecord::Migration
  def change
    add_column :factures, :nom, :string, null: false
  end
end
