class SecretsController < ApplicationController
    before_action :require_login, only: [:show]
    
    def show
        binding.pry
        # name: 'Maya Angelou'
        #only if logged in
        #redirect to login if not
    end

    private
    def require_login
        binding.pry
        return head(:forbidden) unless !current_user.nil?
        redirect_to '/'
    end
end
