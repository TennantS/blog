require 'factory_girl'
FactoryGirl.define do
  factory :post do
    sequence(:title) { |n| "sometitle#{n}" }
    sequence(:body) { |n| "some body text that will be unique #{n}" }
  end
end