puts "Clearing DB..."
Friendship.destroy_all
Match.destroy_all
User.destroy_all

puts "Creating users..."

jordan = User.create!(
  name: 'Jordan Baxter',
  photo: 'https://i.imgur.com/7uzj23o.jpg',
  age: 29,
  description: 'I am a nurse by profession, but my guitar is my passion. I am looking for a girl who can be my life partner.' ,
  gender: 'female',
  sexual_orientation: 'bisexual',
  email: 'user1@user.com',
  password: '123456',
  location: 'Taberna da Glória'
)

milene = User.create!(
  name: 'Milene Cardoso',
  photo: 'https://avatars0.githubusercontent.com/u/43370005?v=4',
  age: 26,
  description:'I\'m a law and business graduate. I\'m bubbly and fun to be with. I\'m full of ideas and I recently founded a subscription box business. I\'m here on Datesy because I want to meet like-minded people, and who are truly honest.',
  gender:'female',
  sexual_orientation:'hetero',
  email: 'user2@user.com',
  password: '123456',
  location: 'Maya'
)

harley = User.create!(
  name: 'Harley Davidson',
  photo: 'https://i.imgur.com/hh0xrh4.jpg',
  age: 31,
  description: 'What do you think of Jane Austen and HP Lovecraft? I\'m a mixed bag... I love bagels and coffee.  I am a staunch believer that a book cannot be judged by its cover. Let\'s sit and discuss books' ,
  gender: 'female',
  sexual_orientation: 'bisexual',
  email: 'user3@user.com',
  password: '123456',
  location: 'Astor Bar'
)

emma = User.create!(
  name: 'Emma Watson',
  photo: 'https://i.imgur.com/FsRMKek.jpg',
  age: 23,
  description:'I love reading manga, I\'m crazy about japanese culture and I attend ALL cosplay events. I\'m a cat person <3, Goku and I would love to meet you! ^.^',
  gender:'female',
  sexual_orientation:'bisexual',
  email: 'user4@user.com',
  password: '123456',
  location: 'Amarelin'
  )

james = User.create!(
  name: 'James Watson',
  photo: 'https://i.imgur.com/BaWnqU8.jpg',
  age: 24,
  description: 'I am a huge college football fan, and an owner of one lucky labrador, Logan. I hate cooking! Let\'s go for pizza tonight!' ,
  gender: 'male',
  sexual_orientation: 'homo',
  email: 'user5@user.com',
  password: '123456',
  location: 'Pergula'
  )

river = User.create!(
  name: 'Kelly Rowland',
  photo: 'https://i.imgur.com/XMCwHDt.jpg',
  age: 29,
  description:'I enjoy camping and spending time outside surrounded by nature. I like eating burnt marshmallows over a fire. Write to me! ;)',
  gender:'male',
  sexual_orientation:'bisexual',
  email: 'user6@user.com',
  password: '123456',
  location: 'Gurume'
  )
ariel = User.create!(
  name: 'Ariel Sung',
  photo: 'https://i.imgur.com/id5juIo.jpg',
  age: 28,
  description: 'Grew up in the Portland, Oregon area. Survived middle school by becoming a skater kid (still haven’t grown out of it). Now I’m trying to pay my rent, play my music, and make my way.' ,
  gender: 'male',
  sexual_orientation: 'homo',
  email: 'user7@user.com',
  password: '123456',
  location: 'Farfarello'
)

remi = User.create!(
  name: 'Remi Martin',
  photo: 'https://i.imgur.com/UF1Zm3m.jpg',
  age: 50,
  description: 'I value my family and I am not ashamed to say that. Family comes first. I am looking for a genuine connection. If you want a one night stand don\'t contact me.',
  gender: 'male',
  sexual_orientation: 'hetero',
  email: 'user8@user.com',
  password: '123456',
  location: 'Gero'
  )

quinn = User.create!(
  name: 'Quinn Fabray',
  photo: 'https://i.imgur.com/V0Iuqkr.jpg',
  age: 27,
  description: 'My favourite time of the day is sunrise. Be it weekend or weekday, 5am is my time to warm up for my daily 2km run at Aterro. Looking for another sporty aficionado. Contact me now!' ,
  gender: 'female',
  sexual_orientation: 'hetero',
  email: 'user9@user.com',
  password: '123456',
  location: 'Nema'
  )

marley = User.create!(
  name: 'Marley Michaels',
  photo: 'https://i.imgur.com/NJCqPIb.jpg',
  age: 29,
  description: 'Liked my pics? Then just contact me! I work long hours, so I am mostly available to meet up only on weekends. PS: If you ask me if my fist name is Bob, I won\'t write back. Simple as that!' ,
  gender: 'male',
  sexual_orientation: 'homo',
  email: 'user10@user.com',
  password: '123456',
  location: 'Manekineko'
  )

london = User.create!(
  name: 'London Knowles',
  photo: 'https://i.imgur.com/Jahneso.jpg',
  age: 28,
  description:'I changed my faculty of studies three times: journalism to medicine, to theology. I am still seeking more from life. What are you looking for? #YOLO',
  gender:'male',
  sexual_orientation:'bisexual',
  email: 'user11@user.com',
  password: '123456',
  location: 'Picci'
  )

drew = User.create!(
  name: 'Drew Barrymore',
  photo: 'https://i.imgur.com/0GDYHuX.jpg',
  age: 30,
  description:'I love children and I am looking for someone to build a family, my biological clock keeps me up at night. Let\'s have fun trying...',
  gender:'female',
  sexual_orientation:'hetero',
  email: 'user12@user.com',
  password: '123456',
  location: 'Al Mare'
  )

blair = User.create!(
  name: 'Blair Leslie',
  photo: 'https://i.imgur.com/MM3ViXf.jpg',
  age: 29,
  description:'I\'m into grunge music. This says a lot about me. So I won\'t add more..',
  gender:'female',
  sexual_orientation:'bisexual',
  email: 'user13@user.com',
  password: '123456',
  location: 'Le Vin Bistro'
  )

olivia = User.create!(
  name: 'Olivia Newton John',
  photo: 'https://i.imgur.com/Gf69M3x.jpg',
  age: 25,
  description: 'I am a reserved type... but a good listener. Tell me a recent idea that intrigued you.............'  ,
  gender: 'female',
  sexual_orientation: 'hetero',
  email: 'user14@user.com',
  password: '123456',
  location: 'Venga'
  )

kamrin = User.create!(
  name: 'Kam Klauschie',
  photo: 'https://i.imgur.com/XZQLbYh.jpg',
  age: 29,
  description: 'I\'m a California girl visiting Rio to study programming. I can drive busses and motorcycles, so you better be ready for some adventures. I love reading, traveling, and a good game of soccer.'  ,
  gender: 'female',
  sexual_orientation: 'hetero',
  email: 'user15@user.com',
  password: '123456',
  location: 'Gero'
  )

luis = User.create!(
  name: 'Luis Frade',
  photo: 'https://i.imgur.com/vYOWKMx.jpg',
  age: 29,
  description: 'Economist turned software engineer. I love the back end, if you know what I mean. I love to go out with friends and party. '  ,
  gender: 'male',
  sexual_orientation: 'hetero',
  email: 'user16@user.com',
  password: '123456',
  location: 'Nosso Bar'
  )

isa = User.create!(
  name: 'Isabela Meyer',
  photo: 'https://i.imgur.com/IbZukfe.jpg',
  age: 30,
  description: 'A passionate, loving, hilarious Carioca with no filter on my mouth, and I’m only looking for sex right now - so you’re so lucky. I’m a vegan and an athlete. Did I tell you I love great sex, so you better be ready.'  ,
  gender: 'female',
  sexual_orientation: 'hetero',
  email: 'user17@user.com',
  password: '123456',
  location: 'Flamengo'
  )

marcos = User.create!(
  name: 'Marcos Cannabrava',
  photo: 'https://i.imgur.com/D1D42fj.jpg',
  age: 28,
  description: 'I work in education and am starting my own company. I’m super smart so you better be ready to talk about multiverses and analytical decision-making. Oh also, I surf, play acoustic guitar, and I have amazing abs.'  ,
  gender: 'male',
  sexual_orientation: 'hetero',
  email: 'user18@user.com',
  password: '123456',
  location: 'Sau Conrado'
  )

cami = User.create!(
  name: 'Cami de Bernis',
  photo: 'https://i.imgur.com/wtnUBaq.jpg',
  age: 27,
  description: 'I\'m French and very romantic. My best joke is plus three, but not for threesomes. I hope my girlfriend is not in the audience at Demo Day and she doesn’t see my profile on Datesy because I will get in trouble again.'  ,
  gender: 'female',
  sexual_orientation: 'homo',
  email: 'user19@user.com',
  password: '123456',
  location: 'Flamengo'
  )

manoel = User.create!(
  name: 'Manoel Tabet',
  photo: 'https://i.imgur.com/LbEk2NC.jpg',
  age: 31,
  description: 'I am the Presidente and the nicest person you\'ll ever meet. I am also a giant, coming in at almost 16 meters tall. I love diet supplements and finding discounts and coupons, and you better be able to impress my mom.'  ,
  gender: 'male',
  sexual_orientation: 'hetero',
  email: 'user20@user.com',
  password: '123456',
  location: 'Flamengo'
  )


caio = User.create!(
  name: 'Caio Andrade',
  photo: 'https://i.imgur.com/B9PhK0f.jpg',
  age: 28,
  description: 'I\'m a great teacher and an even better singer. I sure know how to choose the hits at a party. I most love karaoke and I’m very good at being a third wheel.'  ,
  gender: 'male',
  sexual_orientation: 'hetero',
  email: 'user21@user.com',
  password: '123456',
  location: 'Flamengo'
  )

timi = User.create!(
  name: 'Timi Emmanuel',
  photo: 'https://i.imgur.com/KbcGDp4.jpg',
  age: 24,
  description: 'My friends say I\'m da boss. I’m very concerned with security, and love to build apps to help people walk around or book tanks. When we go out, I\'ll only listen to my headphones. I don’t like to talk with you.'  ,
  gender: 'male',
  sexual_orientation: 'hetero',
  email: 'user22@user.com',
  password: '123456',
  location: 'Flamengo'
  )

puts "Creating friendships..."
jordan.friends << [milene, ariel, blair, emma, james]
harley.friends << ariel
marley.friends << james
kamrin.friends << [isa, luis]
luis.friends << [cami]

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
  status: 'friend_accepted'
)
fifthmatch = Match.create!(
  matchee: luis,
  friend: milene,
  matchmaker: cami,
  status: 'friend_accepted'
)
sixthmatch = Match.create!(
  matchee: luis,
  friend: emma,
  matchmaker: cami,
  status: 'friend_accepted'
)
seventhmatch = Match.create!(
  matchee: kamrin,
  friend: marcos,
  matchmaker: isa,
  status: 'friend_accepted'
)
eighthmatch = Match.create!(
  matchee: kamrin,
  friend: caio,
  matchmaker: isa,
  status: 'friend_accepted'
)
ninthmatch = Match.create!(
  matchee: kamrin,
  friend: milene,
  matchmaker: luis,
  status: 'friend_accepted'
)
tenthmatch = Match.create!(
  matchee: luis,
  friend: isa,
  matchmaker: kamrin,
  status: 'friend_accepted'
)
