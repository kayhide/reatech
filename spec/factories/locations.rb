# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :location do
    sequence(:label) {|i| "Location #{i}"}
    latitude { rand(100) }
    longitude { rand(100) }
  end
end
