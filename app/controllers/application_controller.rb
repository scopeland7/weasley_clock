class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  require 'burrow_helper'

  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  before_filter :authenticate_user!

  def configure_permitted_parameters

  	devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:email, :password, :current_password, :location_id, :current_location, :latitude, :longitude)}
  	
  end

end
