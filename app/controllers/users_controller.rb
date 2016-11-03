class UsersController < ApplicationController
  def display
    @users = User.all
    @users
    render :json => @users
  end

  def create
    @user = User.new user_params
    if @user.save
      render :json => @user
    else
      render_error @user.errors.full_messages
    end
  end

  def update
    @user = User.find params[:id]
    @user
    if @user.update user_params
      render :json => @user
    else
      render_error @user.errors.full_messages
    end
  end

  def delete
  end

  private

  def user_params
    params.require(:user).permit(:username)
  end
end
