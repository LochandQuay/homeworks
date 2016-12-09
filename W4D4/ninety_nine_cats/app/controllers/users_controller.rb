class UsersController < ApplicationController
  before_action :require_current_user!, except: [:create, :new]

  def new
  end

  def create
<<<<<<< HEAD
    user = User.new(user_params)
    if user.save!
      login_user!(user)
=======
    @user = User.new(user_params)
    if @user.save!
      login_user!(@user)
      msg = UserMailer.welcome_email(@user)
      msg.deliver
>>>>>>> 6e95415bcccdae912372df90cc2858acd9cd6ba3
      redirect_to cats_url
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_digest, :session_token)
  end
end
