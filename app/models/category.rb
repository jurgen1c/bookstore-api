class Category < ApplicationRecord
  has_many :books

  validates_presence_of :name, :description
end
