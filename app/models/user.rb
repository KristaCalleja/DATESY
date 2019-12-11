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
  has_many :availabilities, dependent: :destroy

  has_many :friend_dates, through: :friend_matches, source: :match_date
  has_many :matchee_dates, through: :matchee_matches, source: :match_date
  def dates
    friend_dates.or(matchee_dates)
  end

  after_create :set_up_friendship, if: :friend_id

  after_create :create_availabilities

  def available_matchees_for(friend)
    self.class.where.not(id: [id, friend.id]).
      where.not(id: friend.matchee_matches.map {|match| match.friend_id}).
      where.not(id: friend.friend_matches.map {|match| match.matchee_id})
  end

  def potential_matches
    # Rename the method and add additional user
    friend_matches.matchmaker_matched + matchee_matches.friend_accepted
  end

  def official_dates
    friend_matches.matchee_accepted + matchee_matches.matchee_accepted
  end

  def available_times_this_week
    availabilities.map do |availability|
      days_from_monday = Date::DAYNAMES.index(availability.weekday.capitalize) - 1
      availability.times.map do |hour|
        DateTime.now.next_week.advance(days: days_from_monday, hours: hour.to_i)
      end
    end.flatten
  end

  private

  def create_availabilities
    Availability.create(user: self, weekday: 'thursday')
    Availability.create(user: self, weekday: 'friday')
    Availability.create(user: self, weekday: 'saturday')
  end

  def set_up_friendship
    Friendship.create(user_id: self.id, friend_id: friend_id)
  end
end
