class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :destination
  validates_presence_of :anything
end
