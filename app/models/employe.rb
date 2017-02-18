class Employe < ActiveRecord::Base
    #association règles
    belongs_to          :entreprise
    belongs_to          :utilisateur
end
