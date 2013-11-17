# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :project do
    sequence(:label) {|i| "Project #{i}" }
    sequence(:github) {|i| "github_user/repository#{i}" }
  end
end
