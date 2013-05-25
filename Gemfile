source 'https://rubygems.org'

gem 'rails', '3.2.11'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

group :development, :test do
  # spec
  gem "rspec-rails"
  gem "factory_girl_rails"
  gem "database_cleaner"

  # pry
  gem "pry-rails"
  gem "pry-doc"
  gem "pry-nav"

  # debug
  gem "sextant"
  gem "quiet_assets"

  # heroku
  gem 'sqlite3'
  gem 'therubyracer', :platforms => :ruby
end

group :production do
  gem "pg"
end

gem "thin"

# auth
gem 'devise'
gem 'omniauth'
gem 'omniauth-github'

gem 'haml-rails'
gem 'twitter-bootstrap-rails'
gem 'travis'
gem 'rails_config'
gem 'octokit'
