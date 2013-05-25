class WelcomeController < ApplicationController
  respond_to :html
  skip_before_filter :authenticate_user!

  def index
  end
end
