class UsersController < ApplicationController
   def login
   end
 def login_attempt
	@user = User.where(username: params[:username],password: params[:password])
    if @user[0].present?
      redirect_to contacts_path(id: @user[0].id)
    else
	   render "login"
    end
  end
end
