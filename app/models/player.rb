class Player < ApplicationRecord
  belongs_to :club
  has_many :reviews, dependent: :destroy
  has_many :bookings, dependent: :destroy
  validates :name, presence: true
  validates :position, presence: true
  validates :value_per_match, presence: true
  validates :nationality, presence: true
  validates :age, presence: true
  # validates :availability, presence: true
end
