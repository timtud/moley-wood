class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  protect_from_forgery

  before_action :configure_permitted_parameters, if: :devise_controller?


  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :profile_picture, :gender, :bio])
    devise_parameter_sanitizer.permit(:account_update, keys: [:bio, :gender, :profile_picture])
  end




end
