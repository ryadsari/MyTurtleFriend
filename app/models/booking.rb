class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :turtle

  validates :start, presence: true
  validates :end, presence: true
  validates :full_price, presence: true
  validates :user, presence: true
  validates :turtle, presence: true
end
