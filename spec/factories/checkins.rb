# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :checkin do
    checked_out_at nil
    message "message"

    trait :with_user do
      user
    end
    trait :with_location do
      location
    end
    trait :with_project do
      project
    end
  end
end
