class City < ApplicationRecord
  validates :title, presence: true

  has_many :camps
  belongs_to :region, optional: true
end
