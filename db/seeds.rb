puts "Clearing DB..."
Friendship.destroy_all
Match.destroy_all
User.destroy_all

puts "Creating users..."
user1 = User.create!(email: 'user1@user.com', password: 123456)
user2 = User.create!(email: 'user2@user.com', password: 123456)
user3 = User.create!(email: 'user3@user.com', password: 123456)

user4 = User.create!(email: 'user4@user.com', password: 123456)
user5 = User.create!(email: 'user5@user.com', password: 123456)
user6 = User.create!(email: 'user6@user.com', password: 123456)


puts "Creating friendships..."
user1.friends << user2


puts "Creating match scenarios..."
# User 1
# Has a matchmaker user2 that matches him/her with user 3
Match.create!(
  friend: user1,
  matchmaker: user2,
  matchee: user3,
  status: 'matchmaker_matched'
)

# Has a matchmaker user2 that matches him/her with user 4
# But rejected the match
Match.create!(
  friend: user1,
  matchmaker: user2,
  matchee: user4,
  status: 'friend_rejected'
)

# Was matched to user 4 by user 5
Match.create!(
  friend: user4,
  matchmaker: user5,
  matchee: user1,
  status: 'matchmaker_matched'
)

# Was matched to user 5 by user 4
# But user 5 rejected the match
Match.create!(
  friend: user5,
  matchmaker: user4,
  matchee: user1,
  status: 'friend_rejected'
)

# Was matched to user 6 by user 4
# But user 6 rejected the match
Match.create!(
  friend: user6,
  matchmaker: user4,
  matchee: user1,
  status: 'friend_accepted'
)
