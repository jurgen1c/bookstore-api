# frozen_string_literal: true

require 'rails_helper'

FactoryBot.define do
  factory :category do
    title { Faker::Lorem.word }
    description { Faker::Lorem.paragraph }
  end
end
