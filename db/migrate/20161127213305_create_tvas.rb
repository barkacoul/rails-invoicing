class CreateTvas < ActiveRecord::Migration
  def change
    create_table :tvas do |t|
        t.float :valeur, :null => false
      t.timestamps null: false
    end
  end
end
