class Event < ActiveRecord::Base
  belongs_to :user
  attr_accessible :end_at, :max_user_count, :name, :start_at
end
