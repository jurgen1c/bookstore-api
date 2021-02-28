# frozen_string_literal: true

require 'faker'

FactoryBot.define do
  factory :category do
    title { Faker::Lorem.word }
    description { Faker::Lorem.paragraph }
  end
end
