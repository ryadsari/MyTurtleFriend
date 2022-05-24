class Holiday < ApplicationRecord
  belongs_to :user
  belongs_to :turtle

  validates :user, presence: true,
  validates :turtle, presence: true,
  validates :status, presence: true, inclusion: { in: ["accepted", "pending", "rejected"]}
end
