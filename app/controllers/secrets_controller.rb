class SecretsController < ApplicationController
    before_action :require_login, only: [:show]
    
    def show
        #binding.pry
        # name: 'Maya Angelou'
        #only if logged in
        #redirect to login if not - CHECK
        # SecretsController get show should redirect to login if you're not logged in
    end

    private
    def require_login
        redirect_to '/' unless current_user
    end
end
