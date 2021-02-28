# frozen_string_literal: true

require 'faker'

FactoryBot.define do
  factory :book do
    title { Faker::Lorem.words }
    author { Faker::Movies::StarWars.character }
    category { nil }
  end
end
