class Entreprise < ActiveRecord::Base
    #associations
    belongs_to                  :utilisateur
    has_many                    :clients
end
