module ProduitsHelper
     def pas_de_produits(produits)
        content_tag('li', 'Pas de produit en stock.') if produits.empty?
    end
end
