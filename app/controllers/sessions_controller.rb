class SessionsController < ApplicationController

def new 
end 

def create
    if !params[:username].present?
        redirect_to "/login"
    else 
        session[:username] = params[:username]
        redirect_to "/"
    end 
end 

def destroy
    if current_user 
        session.delete :username
    end 
end 

end 