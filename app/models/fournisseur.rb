class Fournisseur < ActiveRecord::Base
    #associations
    belongs_to              :utilisateur
    has_many                :produits
end
