class SessionsController < ApplicationController
  before_action :current_user
  def new
  end

  def create 
    if params[:name].nil?
      redirect_to login_path
    elsif params[:name].empty?
      redirect_to login_path
    else
      session[:name]=params[:name] 
    end
  end


  def destroy
    if current_user
      session.delete :name
      redirect_to login_path
    end
  end
end
