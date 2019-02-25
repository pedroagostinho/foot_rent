class Booking < ApplicationRecord
  belongs_to :club
  belongs_to :player
  validates :start_date, presence: true
  validates :end_date, presence: true
end
