# frozen_string_literal: true

# This will create an instance of the Bodysite class
FactoryBot.define do
  factory :body_site do
    sequence(:identifier, 1000, &:to_s)
    sequence(:name, 10) { |n| "#{n}-bone" }
  end
end
