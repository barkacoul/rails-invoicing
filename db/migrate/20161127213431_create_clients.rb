class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|

        t.string    :nom, :limit => 150
        t.string    :pays, :limit => 100
        t.string    :ville, :limit => 100
        t.string    :adresse,   :limit => 200
        t.string    :adresse_suite, :limit => 100
        t.string    :email, :limit => 150
        t.string    :tel_travail,   :limit => 20
        t.string    :tel_domicile,  :limit => 20
        t.string    :tel_portable,  :limit => 20
      t.timestamps null: false
    end
  end
end
