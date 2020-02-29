class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    update_attrs = [:beatmaker, :email, :password, :password_confirmation]
    devise_parameter_sanitizer.permit :sign_up, keys: update_attrs
    # devise_parameter_sanitizer.permit :account_update, keys: update_attrs
    # devise_parameter_sanitizer.permit :accept_invitation, keys: update_attrs
  end
end

def default_url_options
  { host: ENV["DOMAIN"] || "localhost:3000" }
end
