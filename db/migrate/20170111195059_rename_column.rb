class RenameColumn < ActiveRecord::Migration
  def change
      rename_column :utilisateurs, :mot_de_passe, :mdp_encrypté
  end
end
