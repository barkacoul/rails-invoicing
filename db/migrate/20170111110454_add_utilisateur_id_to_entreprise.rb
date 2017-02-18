class AddUtilisateurIdToEntreprise < ActiveRecord::Migration
  def change
    add_column :entreprises, :utilisateur_id, :integer
  end
end
