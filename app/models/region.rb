class Region < ApplicationRecord
  validates :title, presence: true

  has_many :cities
  belongs_to :country, optional: true
end
