module FournisseursHelper
    def pas_fournisseurs(fournisseurs)
        content_tag('li', 'Pas de fournisseurs enregistrés dans la base de données') if fournisseurs.empty?
    end
    
    def pas_de_produits(produits)
        content_tag('li', 'Pas de produit en stock pour ce fournisseur.') if produits.empty?
    end
end
