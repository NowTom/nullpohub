class UsersController < ApplicationController
  respond_to :html

  def index
    respond_with User.scoped
  end
end
