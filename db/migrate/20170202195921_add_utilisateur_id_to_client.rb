class AddUtilisateurIdToClient < ActiveRecord::Migration
  def change
    add_column :clients, :utilisateur_id, :integer
    add_index  :clients, :utilisateur_id
  end
end
