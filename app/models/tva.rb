class Tva < ActiveRecord::Base
    #associations
    belongs_to                  :utilisateur
    
    #data validation
    validates_presence_of       :valeur
    
end
