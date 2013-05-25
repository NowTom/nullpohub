class CustomFailure < Devise::FailureApp
  def redirect_url
    '/'
  end
end
