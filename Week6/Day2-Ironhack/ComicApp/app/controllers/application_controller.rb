class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

    before_action :configurate_permitted_parameters, if: :devise_controller?

    protected

    def configurate_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :email, :password])
      devise_parameter_sanitizer.permit(:sign_in, keys: [:username])
    end


end
