class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :destination
  has_many :reviews
end
