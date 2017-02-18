class Utilisateur < ActiveRecord::Base
    #defining associations
    has_many                :entreprises
    has_many                :employes
    has_many                :clients
    has_many                :tvas
    has_many                :fournisseurs
    has_many                :produits
    has_many                :factures
    
    accepts_nested_attributes_for :employes, reject_if: proc {|attributes| attributes.blank?}
    
    #paperclip
    has_attached_file   :logo, styles: {large: "600x600", medium: "300x300", thumb: "150x150"}
        
    #validations
        
    attr_accessor :mot_de_passe
    
    validates_length_of       :email, :within => 3..100
    validates_uniqueness_of   :email, :case_sensitive => false
    validates_presence_of     :pnom
    validates_presence_of     :nom
    validates_confirmation_of :mot_de_passe, :if => :mdp_requis?
    validates_attachment_content_type :logo, content_type: /\Aimage\/.*\z/
    #callbacks
    before_save :chiffre_mdp
        
    def self.chiffre(mdp, salt)
        Digest::SHA1.hexdigest("--#{salt}--#{mdp}--")
    end
        
    def self.authentifier(pseudo, pass)
        utilisateur = Utilisateur.find_by_pseudo(pseudo)
        utilisateur && utilisateur.authentifié?(pass) ? utilisateur : nil
    end
        
    def authentifié?(pass)
        mdp_encrypté == Utilisateur.chiffre(pass, salt)
    end
        
    def nom_complet
        "#{self.pnom} #{self.nom}"
    end
        
    protected
        
    def chiffre_mdp
        return if mot_de_passe.blank?
        if new_record?
            self.salt = Digest::SHA1.hexdigest("--#{Time.now}--#{email}--")
        end
        self.mdp_encrypté = Utilisateur.chiffre(mot_de_passe, salt)
    end
        
     def mdp_requis?
        mdp_encrypté.blank? || !mot_de_passe.blank?
    end
end
