class TvaController < ApplicationController
    def index
        @tva = Tva.all
    end
    
    def new
        @tva = Tva.new
    end
    
    def create
        @tva = Tva.new(params_tva)
        if @tva.save
            redirect_to_index("La valeur T.V.A a été ajouté avec succès")
        else
            render :action => "new"
        end
    end
    
    def destroy
    end
    
    private
        def params_tva
            params.require(:tva).permit(:valeur)
        end
    
        def redirect_to_index(notice)
            flash[:notice] = notice
            redirect_to :action => "index"
        end
end
