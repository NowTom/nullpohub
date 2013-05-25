# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event do
    user nil
    name "MyString"
    start_at "2013-05-25 22:11:28"
    end_at "2013-05-25 22:11:28"
    max_user_count 1
  end
end
