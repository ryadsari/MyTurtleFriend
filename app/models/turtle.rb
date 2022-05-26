class Turtle < ApplicationRecord
  belongs_to :user
  validates :first_name, presence: true
  validates :last_name, presence: true
  has_one_attached :photo

  # first step for better search to add later if we have time
  # include PgSearch::Model
  # pg_search_scope :search_by_first_name_and_last_name,
  #   against: [ :first_name, :last_name ],
  #   using: {
  #     tsearch: { prefix: true }
  #   }
end
