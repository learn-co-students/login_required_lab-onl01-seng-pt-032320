class SessionsController < ApplicationController

    def new

    end
    def create
        #:name => "Trinity"
        #sets session[:name] with params
        #redirects to login if empty or nil
        if params[:name].nil? || params[:name].empty?
            redirect_to '/'
        else
            session[:name] = params[:name]
            
        end


    end

    def destroy
        session.delete :name
        #destroys session[:name]
    end
end
