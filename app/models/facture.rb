class Facture < ActiveRecord::Base
    #associations
    has_many    :facture_produits
    has_many    :produits, :through => :facture_produits
    belongs_to  :client
    belongs_to  :utilisateur
    
    #nested attributes
    #accepts_nested_attributes_for :produits, reject_if: proc { |attributes| attributes.blank?}
    accepts_nested_attributes_for :facture_produits, allow_destroy: true, reject_if: proc { |attributes| attributes[:produit_id].blank?}
    
    #validation
    validates_presence_of     :nom
end
