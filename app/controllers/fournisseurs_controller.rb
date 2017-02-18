class FournisseursController < ApplicationController
    before_action   :trouver_fournisseur, except: [:index, :new, :create]
    def index
        @fournisseurs = @current_user.fournisseurs.all
    end
    
    def produit
        @produit_fournisseur = @fournisseur.produits.all
    end
    
    def show
        @fournisseur = Fournisseur.find(params[:id])
    end
    
    def new
        @fournisseur = Fournisseur.new
    end
    
    def create
        @fournisseur = Fournisseur.new(fournisseur_params)
        if @current_user.fournisseurs << @fournisseur
            redirect_to_index("Le nouveau fournisseur a été ajouté avec succès")
            else
            render :action => "new"
        end
    end
        
    def edit
        @fournisseur = Fournisseur.find(params[:id])
    end
        
    def update
        @fournisseur = Fournisseur.find(params[:id])
        
        if @fournisseur.update_attributes(fournisseur_params)
            redirect_to_index("Les informations du fournisseur ont été mises à jour")
            else
            render :action => "edit"
        end
    end
        
    def destroy
        @fournisseur = Fournisseur.find(params[:id])
        if @fournisseur.destroy
            redirect_to_index("Le fournisseur a été supprimé avec succès")
        end
    end
    
    private
    
        def fournisseur_params
            params.require(:fournisseur).permit(:nom, :entreprise, :description, :pays, :ville, :adresse, :adresse_suite, :email, :tel_travail, :tel_domicile, :tel_portable, :utilisateur_id);
        end
    
        def trouver_fournisseur
            @fournisseur = Fournisseur.find(params[:id])
        end
    
        def redirect_to_index(notice)
            flash[:notice] = notice
            redirect_to :action => "index"
        end
end
