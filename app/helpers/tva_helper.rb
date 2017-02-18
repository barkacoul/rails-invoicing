module TvaHelper
     def pas_tva(tvas)
        content_tag('li', 'Pas de TVA dans la base de données') if tvas.empty?
    end
end
