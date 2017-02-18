class AddAttachmentLogoToUtilisateurs < ActiveRecord::Migration
  def self.up
    change_table :utilisateurs do |t|
      t.attachment :logo
    end
  end

  def self.down
    remove_attachment :utilisateurs, :logo
  end
end
