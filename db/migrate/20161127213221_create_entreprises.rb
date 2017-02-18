class CreateEntreprises < ActiveRecord::Migration
  def change
    create_table :entreprises do |t|
        t.string    :nom_entreprise,    :limit => 100
        t.string    :pied_de_page,      :limit => 300
      t.timestamps null: false
    end
  end
end
