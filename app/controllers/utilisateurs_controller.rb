class UtilisateursController < ApplicationController
    
    before_filter       :trouver_utilisateur, :except => [:index, :new, :create]
    
    def index
    end
    
    def show
    end
    
    def new
        @utilisateur = Utilisateur.new
    end
    
    def create
        @utilisateur = Utilisateur.new(utilisateur_params)
        if @utilisateur.save
            @current_user = @utilisateur
            session[:utilisateur] = @utilisateur.id
            redirect_to_index("Utilisateur créé")
            #redirect_to :action => "show", :id => @utilisateur.id
            else
            render :action => "new"
        end
    end
    
    def edit
    end
    
    def update
        if @utilisateur.update_attributes(utilisateur_params)
            redirect_to_profile("Profil mis à jour.")
            else
            render :action => "edit"
        end
    end
    
    def destroy
    end
    
    private
    def utilisateur_params
        params.require(:utilisateur).permit(:pnom, :nom, :pseudo, :mot_de_passe, :mot_de_passe_confirmation, :email, :pays, :logo, :ville, :adresse, :telephone)
    end
    
    def redirect_to_index(notice)
            flash[:notice] = notice
            redirect_to :action => "new"
    end
        
    def redirect_to_profile(notice)
            flash[:notice] = notice
            redirect_to :action => "show", :id => @utilisateur.id
    end
    
    def trouver_utilisateur
        @utilisateur = Utilisateur.find(params[:id])
    end
end
