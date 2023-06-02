class Destination < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  has_many :bookings
  has_many :reviews, through: :bookings

  include PgSearch::Model
  pg_search_scope :search_by_title_and_address_and_description,
  against: [ :title, :address, :description ],
  using: {
    tsearch: { prefix: true } # <-- now `superman batm` will return something!
  }

  validates :title, presence: true
  validates :address, presence: true
  validates :price, presence: true
  validates :photos, presence: true
end
