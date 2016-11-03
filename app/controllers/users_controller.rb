class UsersController < ApplicationController
skip_before_action :verify_authenticity_token
  def display
    @users = User.all
    render json: @users
  end

  def create
    @user = User.create(username: params['username'], score: params['score'])
    # @user = User.create user_params
    if @user.save
      render json: @users
    else
      render_error @user.errors.full_messages
    end
  end

  def update
    @user = User.find params[:id]
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
    params.require(:user).permit(:username, :score)
  end
end
