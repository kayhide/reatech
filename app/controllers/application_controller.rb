class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_checkin
    @current_checkin ||= self.current_user.try(&:active_checkin)
  end

  def is_checked_in?
    !!self.current_checkin
  end
end
