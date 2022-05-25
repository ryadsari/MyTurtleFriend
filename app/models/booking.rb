class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :turtle

  STATUSES = %w[Pending Completed Accepted Rejected Canceled]

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :full_price, presence: true
  validates :user, presence: true
  validates :turtle, presence: true
  validates :status, inclusion: STATUSES
end
