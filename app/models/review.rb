class Review < ApplicationRecord
  belongs_to :turtle

  validates :comment, presence: true
  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5] }, numericality: { only_integer: true }
  validates :turtle, presence: true
end
