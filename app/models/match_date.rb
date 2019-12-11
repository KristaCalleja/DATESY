class MatchDate < ApplicationRecord
  has_one :match

  has_one :friend, through: :match
  has_one :matchee, through: :match

  validates :start_at, presence: true
end
