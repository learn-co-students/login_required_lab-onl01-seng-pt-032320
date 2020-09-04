class SessionsController < ApplicationController

    def new

    end
    def create
        binding.pry
        session[:name] = params[:name] unless (params[:name].nil? || params[:name].empty?)
        #:name => "Trinity"
        #sets session[:name] with params
        #redirects to login if empty or nil

    end

    def destroy
        binding.pry
        #destroys session[:name]
    end
end
