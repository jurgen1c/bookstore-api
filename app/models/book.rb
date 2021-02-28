# frozen_string_literal: true

class Book < ApplicationRecord
  belongs_to :category

  validates_presence_of :title
end
