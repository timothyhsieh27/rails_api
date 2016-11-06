class UsersController < ApplicationController
skip_before_action :verify_authenticity_token
attr_accessor :username, :score

  def display
    @users = User.all
    render :json => @users
  end

  def create
    @user = User.create(username: params['username'], score: params['score'])
    # @user = User.create user_params
    if @user.save
      render :json => @user
    else
      render_error @user.errors.full_messages
    end
  end

  def update
    @user = User.find(params[:id])
    # @user = User.find_by(username: params['username'])
    if @user.update user_params
      render :json => @user
    else
      render_error @user.errors.full_messages
    end
  end

  def delete
    @user = User.find_by(username: params['username'], score: params['score'])
    @user.destroy
  end

  def user_params
    params.permit(:username, :score)
  end

end

# @user = User.find(params[:id])
# @user.username = params[:username]
# @user.score = params[:score]
