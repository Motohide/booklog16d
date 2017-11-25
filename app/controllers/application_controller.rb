class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception
  require 'net/http'
  require 'uri'
  require 'json'

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :gender, :birth_date, :avatar, :prefecture, :hometown, :website, :biography,:job])
    devise_parameter_sanitizer.permit(:account_update, keys: [:nickname, :gender, :birth_date, :avatar, :prefecture, :hometown, :website, :biography,:job])
  end
end
