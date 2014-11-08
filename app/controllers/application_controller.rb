class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  after_filter :cors_set_access_control_headers

  def cors_set_access_control_headers
  end
end


