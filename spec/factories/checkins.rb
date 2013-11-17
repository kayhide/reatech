# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :checkin do
    user nil
    location nil
    checked_out_at nil
    message "MyText"
  end
end
