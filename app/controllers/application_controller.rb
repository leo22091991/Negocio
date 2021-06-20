class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
	skip_before_action :verify_authenticity_token
	before_action :authenticate_user!
	rescue_from CanCan::AccessDenied do |exception|
		redirect_to root_path, alert: "AccessDenied"
	end

  	before_action :configure_permitted_parameters, if: :devise_controller?

  	protected

  	def configure_permitted_parameters
    	devise_parameter_sanitizer.permit(:sign_up, keys: [:dni, :last_name, :name, :phone, :admission_date, :position_id])
    	
  	end
end
