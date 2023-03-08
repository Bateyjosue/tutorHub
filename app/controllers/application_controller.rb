class ApplicationController < ActionController::Base
    skip_before_action :verify_authenticity_token
    def csrf_token
        render json: { csrf_token: form_authenticity_token }
    end  
end
