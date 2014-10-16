class SessionsController < ApplicationController
  skip_before_action :require_login


  def login
end
def login_attempt
  user = User.find_by_username(params[:username])

  if user && user.authenticate(params[:password])
    session[:user_id] = user.id
    redirect_to contacts_path, notice:"Your logged in"
  else
    redirect_to login_path, notice:"Invalid username or password"
  end
end

def logout
  session[:user_id] = nil
  redirect_to login_path
end
  # def validate_user
  #   end
  end


