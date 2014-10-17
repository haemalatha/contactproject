class SessionsController < ApplicationController
  skip_before_action :require_login

  def login
   if request.post?
     if params[:username].blank? || params[:password].blank?
       flash[:error] = 'Enter value first'
       redirect_to login_path and return
     end

     user = User.where(username: params[:username]).first

     if user && user.authenticate(params[:password])
       session[:user_id] = user.id
       redirect_to contacts_path, notice: "You're logged in"
     else
       redirect_to login_path, alert: 'Invalid username or password'
     end
   end
  end

  def logout
    session[:user_id] = nil
    redirect_to login_path
  end
  # def validate_user
  #   end
end


