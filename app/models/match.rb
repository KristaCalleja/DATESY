class Match < ApplicationRecord
  belongs_to :matchee, class_name: "User"
  belongs_to :friend, class_name: "User"
  belongs_to :matchmaker, class_name: "User"

  scope :friend_accepted, -> { where(status: 'friend_accepted') }
  scope :matchmaker_matched, -> { where(status: 'matchmaker_matched') }
end
