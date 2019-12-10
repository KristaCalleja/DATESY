puts "Clearing DB..."
Friendship.destroy_all
Match.destroy_all
User.destroy_all

puts "Creating users..."
jordan = User.create!(
  name: 'Jordan',
  photo: 'https://i.imgur.com/7uzj23o.jpg',
  age: 29,
  description: 'I am a nurse by profession, but my guitar is my passion. I am looking for a girl who can be my life partner.' ,
  gender: 'female',
  sexual_orientation: 'bisexual',
  email: 'user1@user.com',
  password: '123456'
  )

milene = User.create!(
  name: 'Milene',
  photo: 'https://avatars0.githubusercontent.com/u/43370005?v=4',
  age: 26,
  description:'I\'m a law and business graduate. I\'m bubbly and fun to be with. I\'m full of ideas and I recently founded a subscription box business. I\'m here on Datesy because I want to meet like-minded people, and who are truly honest.',
  gender:'female',
  sexual_orientation:'hetero',
  email: 'user2@user.com',
  password: '123456'
  )
harley = User.create!(
  name: 'Harley',
  photo: 'https://i.imgur.com/hh0xrh4.jpg',
  age: 31,
  description: 'What do you think of Jane Austen and HP Lovecraft? I\'m a mixed bag... I love bagels and coffee.  I am a staunch believer that a book cannot be judged by its cover. Let\'s sit and discuss books' ,
  gender: 'female',
  sexual_orientation: 'bisexual',
  email: 'user3@user.com',
  password: '123456'
  )
emma = User.create!(
  name: 'Emma',
  photo: 'https://i.imgur.com/YmMzn2A.jpg',
  age: 23,
  description:'I love reading manga, I\'m crazy about japanese culture and I attend ALL cosplay events. I\'m a cat person <3, Goku and I would love to meet you! ^.^',
  gender:'female',
  sexual_orientation:'bisexual',
  email: 'user4@user.com',
  password: '123456'
  )
james = User.create!(
  name: 'James',
  photo: 'https://i.imgur.com/BaWnqU8.jpg',
  age: 24,
  description: 'I am a huge college football fan, and an owner of one lucky labrador, Logan. I hate cooking! Let\'s go for pizza tonight!' ,
  gender: 'male',
  sexual_orientation: 'homo',
  email: 'user5@user.com',
  password: '123456'
  )
river = User.create!(
  name: 'River',
  photo: 'https://i.imgur.com/XMCwHDt.jpg',
  age: 29,
  description:'I enjoy camping and spending time outside surrounded by nature. I like eating burnt marshmallows over a fire. Write to me! ;)',
  gender:'male',
  sexual_orientation:'bisexual',
  email: 'user6@user.com',
  password: '123456'
  )
ariel = User.create!(
  name: 'Ariel',
  photo: 'https://i.imgur.com/id5juIo.jpg',
  age: 28,
  description: 'Grew up in the Portland, Oregon area. Survived middle school by becoming a skater kid (still haven’t grown out of it). Now I’m trying to pay my rent, play my music, and make my way.' ,
  gender: 'male',
  sexual_orientation: 'homo',
  email: 'user7@user.com',
  password: '123456'
)
remi = User.create!(
  name: 'Remi',
  photo: 'https://i.imgur.com/UF1Zm3m.jpg',
  age: 50,
  description: 'I value my family and I am not ashamed to say that. Family comes first. I am looking for a genuine connection. If you want a one night stand don\'t contact me.',
  gender: 'male',
  sexual_orientation: 'hetero',
  email: 'user8@user.com',
  password: '123456'
  )
quinn = User.create!(
  name: 'Quinn',
  photo: 'https://i.imgur.com/V0Iuqkr.jpg',
  age: 27,
  description: 'My favourite time of the day is sunrise. Be it weekend or weekday, 5am is my time to warm up for my daily 2km run at Aterro. Looking for another sporty aficionado. Contact me now!' ,
  gender: 'female',
  sexual_orientation: 'hetero',
  email: 'user9@user.com',
  password: '123456'
  )
marley = User.create!(
  name: 'Marley',
  photo: 'https://i.imgur.com/NJCqPIb.jpg',
  age: 29,
  description: 'Liked my pics? Then just contact me! I work long hours, so I am mostly available to meet up only on weekends. PS: If you ask me if my fist name is Bob, I won\'t write back. Simple as that!' ,
  gender: 'male',
  sexual_orientation: 'homo',
  email: 'user10@user.com',
  password: '123456'
  )
london = User.create!(
  name: 'London',
  photo: 'https://i.imgur.com/Jahneso.jpg',
  age: 28,
  description:'I changed my faculty of studies three times: journalism to medicine, to theology. I am still seeking more from life. What are you looking for? #YOLO',
  gender:'male',
  sexual_orientation:'bisexual',
  email: 'user11@user.com',
  password: '123456'
  )
drew = User.create!(
  name: 'Drew',
  photo: 'https://i.imgur.com/0GDYHuX.jpg',
  age: 30,
  description:'I love children and I am looking for someone to build a family, my biological clock keeps me up at night. Let\'s have fun trying...',
  gender:'female',
  sexual_orientation:'hetero',
  email: 'user12@user.com',
  password: '123456'
  )
blair = User.create!(
    name: 'Blair',
  photo: 'https://i.imgur.com/MM3ViXf.jpg',
  age: 29,
  description:'I\'m into grunge music. This says a lot about me. So I won\'t add more..',
  gender:'female',
  sexual_orientation:'bisexual',
  email: 'user13@user.com',
  password: '123456'
  )
olivia = User.create!(
  name: 'Olivia',
  photo: 'https://i.imgur.com/Gf69M3x.jpg',
  age: 25,
  description: 'I am a reserved type... but a good listener. Tell me a recent idea that intrigued you.............'  ,
  gender: 'female',
  sexual_orientation: 'hetero',
  email: 'user14@user.com',
  password: '123456'
  )

puts "Creating frienships..."
jordan.friends << milene
harley.friends << ariel
marley.friends << james

puts "Creating matches..."
firstmatch = Match.create!(
  matchee: olivia,
  friend: jordan,
  matchmaker: milene,
  status: 'matchmaker_matched'
)
secondmatch = Match.create!(
  matchee: emma,
  friend: jordan,
  matchmaker: milene,
  status: 'matchmaker_matched'
)
thirdmatch = Match.create!(
  matchee: marley,
  friend: milene,
  matchmaker: jordan,
  status: 'friend_accepted'
)
fourthmatch = Match.create!(
  matchee: marley,
  friend: jordan,
  matchmaker: milene,
  status: 'matchee_accepted'
)

puts "Seed finished! Lots of connections to be made here!"



