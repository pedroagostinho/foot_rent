class Club < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :players, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  # uniqueness: true
  validates :address, presence: true, uniqueness: true
  validates :city, presence: true
  #geocoding
  geocoded_by :city
  after_validation :geocode, if: :will_save_change_to_city?

  mount_uploader :photo, PhotoUploader #cloudary
end
