# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Category, type: :model do
  it { should have_many(:books) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:description) }
end
