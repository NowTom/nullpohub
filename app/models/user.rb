class User < ActiveRecord::Base
  devise :database_authenticatable, :trackable, :omniauthable
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name, :provider, :uid

  class << self
    def find_for_github_oauth(auth, signed_in_resource=nil)
      user = User.where(:provider => auth.provider, :uid => auth.uid).first
      unless user
        user = User.create(name: auth.extra.raw_info.name,
                           provider: auth.provider,
                           uid: auth.uid,
                           email: auth.info.email,
                           password: Devise.friendly_token[0,20]
                          )
      end
      user
    end
  end
end
