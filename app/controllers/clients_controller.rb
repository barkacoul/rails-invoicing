class ClientsController < ApplicationController
    before_action   :find_client, except: [:index, :new, :create]
    
    def index
        @clients = @current_user.clients.all
    end
    
    def facture
        @client_factures = @client.factures.all
    end
    
    def show
        @client = @current_user.clients.find(params[:id])
    end
    
    def new
        @client = Client.new
    end
    
    def create
        @client = Client.new(client_params)
        if @current_user.clients << @client
            redirect_to_index("Le nouveau client a été ajouté avec succès")
            else
            render :action => "new"
        end
    end
        
    def edit
        @client = Client.find(params[:id])
    end
        
    def update
        @client = Client.find(params[:id])
        
        if @client.update_attributes(client_params)
            redirect_to_index("Les informations du client ont été mises à jour")
            else
            render :action => "edit"
        end
    end
        
    def destroy
        @client = Client.find(params[:id])
        if @client.destroy
            redirect_to_index("Le client a été supprimé avec succès")
        end
    end
    
    private
    
        def client_params
            params.require(:client).permit(:nom, :pays, :ville, :adresse, :adresse_suite, :email, :tel_travail, :tel_domicile, :tel_portable, :utilisateur_id);
        end
    
        def redirect_to_index(notice)
            flash[:notice] = notice
            redirect_to :action => "index"
        end
    
        def find_client
            @client = @current_user.clients.find(params[:id])
        end
end
