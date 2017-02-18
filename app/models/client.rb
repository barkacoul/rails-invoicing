class Client < ActiveRecord::Base
    #associations
    #belongs_to          :entreprise
    belongs_to            :utilisateur
    has_many            :factures
    
    #logique
    def nom_pays_et_ville
        "#{self.nom} " " #{self.pays}" " #{self.ville} "   
    end
    
end
