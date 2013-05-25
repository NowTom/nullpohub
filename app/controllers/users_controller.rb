class UsersController < ApplicationController
  respond_to :html

  def index
    @users = User.scoped
    respond_with @users
  end

  def show
    @user = User.where(id: params[:id]).first
    respond_with @user
  end
end
