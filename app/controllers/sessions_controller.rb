class SessionsController < ApplicationController
    before_action :require_logged_in

    def create
        if params[:name] && !params[:name].empty?
            sessions[:name] = params[:name]
        else
            redirect_to '/login'
        end
    end
    
    def show
        
    end

    def destroy
        session.delete :name
    end


end
