class ApplicationController < ActionController::Base

  include Pundit
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  def after_sign_in_path_for(resource)
    if current_user.user_type == "Client"
      client_path(current_user)
    else
      trainer_path(current_user)
    end
  end

  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) {|u| u.permit(:user_type, :email, :password, :trainer_id)}
    end

  private
  	# def user_not_authorized
  	# 	flash[:alert] = "You are not authorized to perform this action."
  	# 	redirect_to(request.referrer || root_path)
  	# end


end
