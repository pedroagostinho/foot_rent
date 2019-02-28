class Player < ApplicationRecord
  include PgSearch
  pg_search_scope :global_search,
  against: [:name, :position],
  associated_against: {
      club: [:name, :city]
    },
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }


  belongs_to :club
  has_many :reviews, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :stats, dependent: :destroy
  validates :name, presence: true
  validates :position, presence: true
  validates :value_per_match, presence: true
  validates :nationality, presence: true
  validates :age, presence: true
  # validates :availability, presence: true

  mount_uploader :photo, PhotoUploader #cloudary

end
