class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create

      if User.new(user_params).save
        #redicret to signed in
        flash[:success] = 'you are registered'
        redirect_to users_path
      else

        flash[:error] = 'registration has failed'

        redirect_to new_user_path

      end
  end

  def show
    @user = User.find(params[:id])
  end

  def comment
    @user = User.find(params[:id])
    @recipes = Recipe.all
  end


private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :handle, :password,:password_confirmation)
  end


end
