class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception
  before_action do
    if current_recruit != nil
      authenticate_recruit!
    else
      authenticate_user!
    end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username,:name,:lastname,:photo,:password,:password_confirmation])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username,:name,:lastname,:photo,:password,:password_confirmation])
  end
end
