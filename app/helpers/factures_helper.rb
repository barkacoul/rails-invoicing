module FacturesHelper
     def pas_de_factures(factures)
        content_tag('li', 'Pas de factures créées') if factures.empty?
    end
end
