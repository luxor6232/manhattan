class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :service

  validates :start_date, presence: true
end
