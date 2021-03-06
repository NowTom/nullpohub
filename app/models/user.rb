class User < ActiveRecord::Base
  devise :database_authenticatable, :trackable, :omniauthable
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name, :provider, :uid

  has_many :events

  class << self
    def find_for_github_oauth(auth, signed_in_resource=nil)
      user = User.where(:provider => auth.provider, :uid => auth.uid).first
      unless user
        user = User.create(name: auth.extra.raw_info.login,
                           provider: auth.provider,
                           uid: auth.uid,
                           email: auth.info.email,
                           password: Devise.friendly_token[0,20]
                          )
      end
      user
    end
  end

  def public_repos
    Octokit.repos(name)
      .select { |x| x['fork'] == false }
      .map { |x| x['name'] }
  end

  def travis_repos
    @travis_repos ||= Travis::Repository.find_all(owner_name: name)
  end
end
