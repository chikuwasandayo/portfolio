class UsersController < ApplicationController
  skip_before_action :login_required, only: [:new, :create]
  def index
  
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new 
  end

  def create
    user = User.new(user_params)
    user.save!
    redirect_to users_url
  end

  def update
    user = User.find(params[:id])
 
    user.update!(user_params)
  
    redirect_to users_url
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to users_url
  end
  
  def edit
    @user = User.find(params[:id])
  end

  private
    def user_params
      params.require(:user).permit(:email,:password,:password_confirmation)
    end
end
