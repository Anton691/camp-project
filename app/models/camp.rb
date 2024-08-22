class Camp < ApplicationRecord
  validates :title, presence: true

  belongs_to :city, optional: true
end
