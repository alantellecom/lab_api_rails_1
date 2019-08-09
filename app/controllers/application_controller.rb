class ApplicationController < ActionController::Base


    acts_as_token_authentication_handler_for User
    #before_action :authenticate_user!
    
    rescue_from CanCan::AccessDenied do |exception|
        respond_to do |format|
        #format.json { render json: {Status: "Consulta não autorizada!"}, status: :forbidden }
        format.json { render :partial => "principal/error.json", status: :forbidden }
        
        format.html { render :file => "#{Rails.root}/public/403.html", :status => 403, :layout => false }
        end
      
    end
    
end
