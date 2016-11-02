class UsersController < ApplicationController
  def index
    @users = User.all
    respond_to :html, :json
  end
end
