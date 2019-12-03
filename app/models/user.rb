class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :matchmaker_matches, foreign_key: :matchmaker_id, class_name: "Match"
  has_many :friend_matches, foreign_key: :friend_id, class_name: "Match"
  has_many :matchee_matches, foreign_key: :matchee_id, class_name: "Match"

  has_many :friendships
  has_many :friends, through: :friendships

  def potential_matches
    friend_matches.matchmaker_matched + matchee_matches.friend_accepted
  end
end
