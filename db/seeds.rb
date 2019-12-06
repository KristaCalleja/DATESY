puts "Clearing DB..."
Friendship.destroy_all
Match.destroy_all
User.destroy_all

puts "Creating users..."
jordan = User.create!(
  name: 'Jordan',
  photo: ' ',
  age: 29,
  description: 'I am a nurse by profession, but my guitar is my passion. I am looking for a girl who can be my life partner.' ,
  gender: 'https://i.imgur.com/BaWnqU8.jpg',
  sexual_orientation: 'hetero',
  email: 'user1@user.com',
  password: '123456'
  )
quinn = User.create!(
  name: 'Quinn',
  photo: 'https://i.imgur.com/hh0xrh4.jpg',
  age: 27,
  description: 'My favourite time of the day is sunrise. Be it weekend or weekday, 5am is my time to warm up for my daily 2km run at Aterro. Looking for another sporty aficionado. Contact me now!' ,
  gender: ' ',
  sexual_orientation: 'hetero',
  email: 'user2@user.com',
  password: '123456'
  )
harley = User.create!(
  name: 'Harley',
  photo: 'https://i.imgur.com/hh0xrh4.jpg',
  age: 31,
  description: 'Wie geht\'s? ¿Hablas español? I am Brazilian by birth but my parents are Spanish and German. I lived in the Mississippi for 8 years and I wish to go back soon. I love bagels and coffee.' ,
  gender: ' ',
  sexual_orientation: 'homo',
  email: 'user3@user.com',
  password: '123456'
  )
spencer = User.create!(
  name: 'Spencer',
  photo: 'https://i.imgur.com/Gf69M3x.jpg',
  age: 27,
  description: 'I am a reserved type... but a good listener. Tell me a recent idea that intrigued you..............'  ,
  gender: ' ',
  sexual_orientation: 'homo',
  email: 'user4@user.com',
  password: '123456'
  )
skyler = User.create!(
  name: 'Skyler',
  photo: 'https://i.imgur.com/YmMzn2A.jpg',
  age: 23,
  description: 'I am a huge college football fan, and an owner of one lucky labrador, Logan. I hate cooking! Let\'s go for pizza tonight!' ,
  gender: ' ',
  sexual_orientation: 'homo',
  email: 'user5@user.com',
  password: '123456'
  )
marley = User.create!(
  name: 'Marley',
  photo: 'https://i.imgur.com/MM3ViXf.jpg',
  age: 29,
  description: 'Liked my pics? Then just contact me! I work long hours, so I am mostly available to meet up only on weekends. PS: If you ask me if my fist name is Bob, I won\'t write back. Simple as that!' ,
  gender: ' ',
  sexual_orientation: 'homo',
  email: 'user6@user.com',
  password: '123456'
  )
ariel = User.create!(
  name: 'Ariel',
  photo: 'https://i.imgur.com/id5juIo.jpg',
  age: 30,
  description: 'Grew up in the Portland, Oregon area. Survived middle school by becoming a skater kid (still haven’t grown out of it). Now I’m trying to pay my rent, play my music, and make my way.' ,
  gender: ' ',
  sexual_orientation: 'homo',
  email: 'user7@user.com',
  password: '123456'
)
ellis = User.create!(
  name: 'Ellis',
  photo: 'https://i.imgur.com/XMCwHDt.jpg',
  age: 29,
  description: 'My favorite movies are The Godfather and When Harry Met Sally. I am a staunch believer that a book cannot be judged by its cover.' ,
  gender: ' ',
  sexual_orientation: 'hetero',
  email: 'user8@user.com',
  password: '123456'
)
remi = User.create!(
  name: 'Remi',
  photo: 'https://i.imgur.com/V0Iuqkr.jpg',
  age: 23,
  description: 'I value my family and I am not ashamed to say that. Family comes first. I am looking for a genuine connection. If you want a one night stand don\'t contact me.',
  gender: ' ',
  sexual_orientation: 'hetero',
  email: 'user9@user.com',
  password: '123456'
  )

puts "Creating frienships..."
jordan.friends << quinn
harley.friends << ariel
marley.friends << skyler


puts "Seed finished! Lots of connections to be made here!"
