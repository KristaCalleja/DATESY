class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  attr_accessor :friend_id

  # Matches I made for somebody
  has_many :matchmaker_matches, foreign_key: :matchmaker_id, class_name: "Match"

  # Matches a matchmaker friend made for me
  has_many :friend_matches, foreign_key: :friend_id, class_name: "Match"

  # Matches a matchmaker of another person made for me
  has_many :matchee_matches, foreign_key: :matchee_id, class_name: "Match"

  has_many :friendships
  has_many :friends, through: :friendships

  after_create :set_up_friendship, if: :friend_id

  def available_matchees_for(friend)
    self.class.where.not(id: [id, friend.id]).
      where.not(id: friend.matchee_matches.map {|match| match.friend_id}).
      where.not(id: friend.friend_matches.map {|match| match.matchee_id})
  end

  def potential_matches
    # Rename the method and add additional user
    friend_matches.matchmaker_matched + matchee_matches.friend_accepted
  end

  private
  def set_up_friendship
    Friendship.create(user_id: self.id, friend_id: friend_id)
  end
end
