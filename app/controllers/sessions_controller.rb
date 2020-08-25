class SessionsController < ApplicationController
  before_action :logged_in?
  skip_before_action :logged_in?, only: [:destroy]

  def index
  end 

  def new
  end 

  def create
    session[:name] = params[:name]
  end 

  def destroy
    session.delete :name
  end 

  private

  def logged_in?
      if !params[:name].present?
          redirect_to '/login'
      end
  end 
end
