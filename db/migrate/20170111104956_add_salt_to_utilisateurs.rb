class AddSaltToUtilisateurs < ActiveRecord::Migration
  def change
    add_column :utilisateurs, :salt, :string, :limit => 40
  end
end
