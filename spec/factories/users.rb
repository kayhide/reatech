# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    email "user@reatech.herokuapp.com"
    password "password"
  end
end
