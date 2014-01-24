class ApplicationController < ActionController::Base
  include SimpleCaptcha::ControllerHelpers
  before_filter :require_login

  private
  
  def require_login
    unless logged_in?
      flash[:error] = "You must be logged in to access this section"
      redirect_to root_url # halts request cycle
    end
  end

  def logged_in?
    !!current_user
  end

  protect_from_forgery

  helper_method :current_user

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end



end
