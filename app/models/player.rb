class Player < ApplicationRecord
  belongs_to :club
  has_many :reviews, dependent: :destroy
  has_many :bookings, dependent: :destroy
end
