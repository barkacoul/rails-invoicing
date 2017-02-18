class AddColumnToFactures < ActiveRecord::Migration
  def change
    add_column :factures, :client_id, :integer
       add_index   :factures, :client_id
  end
end
