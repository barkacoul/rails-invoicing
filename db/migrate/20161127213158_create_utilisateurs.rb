class CreateUtilisateurs < ActiveRecord::Migration
  def change
    create_table :utilisateurs do |t|

        t.string    :pseudo, :limit => 20
        t.string    :mot_de_passe,  :limit =>40
        t.string    :email
        t.boolean   :isAdmin,   :default => false
        t.string    :pnom,  :limit => 100
        t.string    :nom,   :limit => 50
        t.string    :pays,  :limit => 100
        
      t.timestamps null: false
    end
  end
end
