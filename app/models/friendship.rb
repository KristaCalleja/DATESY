class Friendship < ApplicationRecord
  belongs_to :user, class_name: "User"
  belongs_to :friend, class_name: "User"

  validates :friend, uniqueness: { scope: :user }

  after_create :mirror_friendship

  private

  def mirror_friendship
    Friendship.create(user: friend, friend: user)
  end
end
