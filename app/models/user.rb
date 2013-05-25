class User < ActiveRecord::Base
  devise :database_authenticatable, :trackable, :omniauthable
  attr_accessible :email, :password, :password_confirmation, :remember_me, :uid
end
