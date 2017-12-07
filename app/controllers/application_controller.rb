class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :logged_in?, :convert_time, :convert_day

  def authenticate
    authenticate_or_request_with_http_basic do |username,password|
      username == "admin" && password == "admin"
    end
  end

  def logged_in?
    not request.authorization.nil?
  end

  def convert_time(datetime)
    datetime = datetime.strftime("%H:%M")
  end

  def convert_day(datetime)
    datetime = datetime.strftime("%-d %b %Y")
  end
end
