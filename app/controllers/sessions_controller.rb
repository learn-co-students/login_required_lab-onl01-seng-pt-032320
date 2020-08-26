class SessionsController < ApplicationController
    
    def create
        if !params[:name] || params[:name].empty?
            require_login
        else
            session[:name] = params[:name]
            redirect_to controller: 'application', action: 'hello'
        end
    end

    def destroy
        session.delete :name
    end
end