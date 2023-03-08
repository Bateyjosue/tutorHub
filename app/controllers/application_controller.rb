class ApplicationController < ActionController::Base
    def csrf_token
        render json: { csrf_token: form_authenticity_token }
    end  
end
