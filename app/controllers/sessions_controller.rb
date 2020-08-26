class SessionsController < ApplicationController

    def new
    end

    def create
      if valid_name?
        session[:name] = params[:name]
        redirect_to '/'
      else
        redirect_to new_session_path
      end
    end

    def destroy
      session.delete :name
      redirect_to new_session_path
    end
    
end