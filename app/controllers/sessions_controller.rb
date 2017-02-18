class SessionsController < ApplicationController
    
    skip_before_filter      :create
    
    def new
    end
    
    def create
        @current_user = Utilisateur.authentifier(params[:pseudo], params[:password])
        if @current_user
            session[:utilisateur] = @current_user.id
            redirect_to :controller => "utilisateurs", :action => "show", :id => @current_user.id
            else
            flash[:notice] = "L'utilisateur avec les identifiants spécifiés non trouvé."
            render :action => "new"
        end    
    end
    
    def destroy
        reset_session
        flash[:notice] = "Vous êtes maintenant déconnecté"
        redirect_to :action => "new"
    end
    
end
