class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
    
  protect_from_forgery with: :exception
    
    before_filter       :initialiser_utilisateur
    
    helper_method       :connecté?, :est_admin?
    
    protected
    def connecté?
        @current_user.is_a?(Utilisateur)
    end
    
    def est_admin?
        @current_user.isAdmin?
    end
    
    def initialiser_utilisateur
        @current_user = Utilisateur.find_by_id(session[:utilisateur]) if session[:utilisateur]
    end
    
end
