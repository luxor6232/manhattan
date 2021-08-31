class Service < ApplicationRecord
  has_many :bookings

  validates :title, presence: true, uniqueness: true
  validates :content, presence: true, length:{ minimum: 60}
  validates :price, presence: true
end
