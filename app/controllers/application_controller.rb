class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :logged_in?

  def authenticate
    authenticate_or_request_with_http_basic do |username,password|
      username == "admin" && password == "admin"
    end
  end

  def logged_in?
    not request.authorization.nil?
  end
end
