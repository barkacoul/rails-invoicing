class Produit < ActiveRecord::Base
    #association
    belongs_to  :utilisateur
    belongs_to  :fournisseur
    has_many    :facture_produits
    has_many    :factures, :through => :facture_produits
    
    #validation
    #call_back
    
    #nested attributes
    accepts_nested_attributes_for :factures, reject_if: proc { |attributes| attributes.blank?}
    accepts_nested_attributes_for :facture_produits, reject_if: proc { |attributes| attributes.blank?}
    #logic de calcul
    #private
    def valeur_de_stock
        self.valeur_de_stock = self.quantite * self.prix_de_vente
        #self.save
    end
    
    def marge_beneficiaire
        self.marge_beneficiaire = (self.prix_de_vente - self.prix_unitaire) * self.quantite
        #self.save
    end
end
