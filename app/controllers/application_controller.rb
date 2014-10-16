class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
 helper_method :current_user
  before_action :require_login
 # before_filter :validate_user
 # before_filter :set_cache_buster
 #
 # def set_cache_buster
 #   response.headers["Cache-Control"] = "no-cache, no-store, max-age=0, must-revalidate"
 #   response.headers["Pragma"] = "no-cache"
 #   response.headers["Expires"] = "Fri, 01 Jan 1990 00:00:00 GMT"
 # end
 # before_filter :set_no_cache
 #
 # def set_no_cache
 #   response.headers["Cache-Control"] = "no-cache, no-store, max-age=0, must-revalidate"
 #   response.headers["Pragma"] = "no-cache"
 #   response.headers["Expires"] = "Fri, 01 Jan 1990 00:00:00 GMT"
 # end
 private

  def require_login
    unless login?
      flash[:error] = "You must be logged in to access this section"
      redirect_to login_path # halts request cycle
    end
  end

  protect_from_forgery with: :exception



  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  def login?
    current_user !=nil
  end

end
