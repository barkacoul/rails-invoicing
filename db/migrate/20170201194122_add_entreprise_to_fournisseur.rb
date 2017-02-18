class AddEntrepriseToFournisseur < ActiveRecord::Migration
  def change
    add_column :fournisseurs, :entreprise, :string
  end
end
