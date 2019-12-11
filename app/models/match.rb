class Match < ApplicationRecord
  belongs_to :matchee, class_name: "User"
  belongs_to :friend, class_name: "User"
  belongs_to :matchmaker, class_name: "User"

  belongs_to :match_date, optional: true
  alias date match_date
  alias date= match_date=

  validates :status, inclusion: { in: ['matchmaker_matched', 'matchmaker_rejected', 'friend_accepted', 'friend_rejected', 'matchee_accepted', 'matchee_rejected'] }

  scope :matchmaker_matched, -> { where(status: 'matchmaker_matched') }
  scope :friend_accepted, -> { where(status: 'friend_accepted') }
  scope :matchee_accepted, -> { where(status: 'matchee_accepted') }
end
