class ProduitsController < ApplicationController
    def index
        @produits = @current_user.produits.all
    end
    
    def show
        @produit = Produit.find(params[:id])
    end
    
    def new
        @produit = Produit.new
        @produit.build_fournisseur
    end
    
    def create
        @produit = Produit.new(produit_params)
        if @current_user.produits << @produit
            redirect_to_index("Le produit a été ajouté avec succès")
            else
            render :action => "index"
        end
    end
    
    def edit
        @produit = Produit.find(params[:id])
    end
    
    def update
        @produit = Produit.find(params[:id])
        if @produit.update_attributes(produit_params)
            redirect_to_index("Le produit a été mis à jour.")
            else
            render :action => "edit"
        end
    end
    
    def destroy
        @produit = Produit.find(params[:id])
        if @produit.destroy
        redirect_to_index("Le produit a été supprimé.")
        end
    end
    
    private
    
        def produit_params
            params.require(:produit).permit(:nom, :description, :quantite, :prix_unitaire, :prix_de_vente, :valeur_de_stock, :marge_beneficiaire, :fournisseur_id)
        end
    
        def redirect_to_index(notice)
            flash[:notice]= notice
            redirect_to :action => "index"
        end
end
