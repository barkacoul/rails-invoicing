class FactureProduit < ActiveRecord::Base
    #associations
    belongs_to      :facture
    belongs_to      :produit
    #accepts_nested_attributes_for :facture, reject_if: proc { |attributes| attributes.blank?}
    #accepts_nested_attributes_for :produit, reject_if: proc { |attributes| attributes.blank?}
    
    #validation
end
