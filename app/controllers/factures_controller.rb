class FacturesController < ApplicationController
    def index
        @factures = Facture.where(utilisateur_id: @current_user.id)
    end
    
    def show
        @facture = Facture.includes(:facture_produits).find(params[:id])
        respond_to do |format|
            format.html
            end
    end
    
    def new
        @facture = Facture.new
        16.times {@facture.facture_produits.build}
    end
    
    def create
        @facture = Facture.new(facture_params)
        if @current_user.factures << @facture
            redirect_to_index("La facture a été créée")
            else
            render :action => "new"
            
        end
    end
    
    def edit
    end
    
    def update
    end
    
    def destroy
    end
    
    private
    
    def facture_params
        #_attributes
        params.require(:facture).permit(:montant_ht, :montant_ttc, :client_id, :tva_valeur, :utilisateur_id, :nom, facture_produits_attributes: [:produit_id, :quantite, :prix_unitaire, :sous_total, :_destroy])
    end
    
     def redirect_to_index(notice)
            flash[:notice] = notice
            redirect_to :action => "new"
    end
end
