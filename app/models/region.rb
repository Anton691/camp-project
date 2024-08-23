class Region < ApplicationRecord
  validates :title, presence: true

  has_many :cities
end
