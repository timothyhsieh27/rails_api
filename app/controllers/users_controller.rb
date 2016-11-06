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
      render :show
    else
      render_error @user.errors.full_messages
    end
  end

  def update
    @user = User.find_by(username: params['username'], score: params['score'])
    if @user.update(username: params['new_username'], score: params['new_score'])
      render :json => @user
    else
      render_error @user.errors.full_messages
    end
  end

  def delete
    @user = User.find_by(username: params['username'], score: params['score'])
    @user.destroy
  end

end
