require 'faker'

puts "Deleting Games, Users, Reviews data..."
Game.destroy_all
User.destroy_all
Review.destroy_all

puts "🌱 Creating games..."
g1 = Game.create(title: "Valorant", image_url: "https://mmoculture.com/wp-content/uploads/2020/08/Valorant-image.png", game_genre: "Shooter")
g2 = Game.create(title: "MLB The Show 22", image_url: "https://image.api.playstation.com/vulcan/ap/rnd/202201/2818/UkxS8YtE03ngMF95hyQyHpWk.png", game_genre: "Sports")
g3 = Game.create(title: "Madden NFL 22", image_url: "https://image.api.playstation.com/vulcan/ap/rnd/202108/0407/xG6ng0WvNnXAEshDxIveyp4T.png", game_genre: "Sports")
g4 = Game.create(title: "NBA 2K22", image_url: "https://image.api.playstation.com/vulcan/ap/rnd/202106/3002/Eaq9uyUlyLZK8L5xTlsPl0rM.png", game_genre: "Sports")
g5 = Game.create(title: "Forza Horizon 5", image_url: "https://static.wikia.nocookie.net/forzamotorsport/images/f/f4/FH5_Boxart.jpg/revision/latest?cb=20210907183312", game_genre: "Racing")
g6 = Game.create(title: "Minecraft", image_url: "https://upload.wikimedia.org/wikipedia/en/5/51/Minecraft_cover.png", game_genre: "Sandbox")
g7 = Game.create(title: "Grand Theft Auto V", image_url: "https://upload.wikimedia.org/wikipedia/en/a/a5/Grand_Theft_Auto_V.png", game_genre: "Open world")
g8 = Game.create(title: "Fortnite", image_url: "https://assets1.ignimgs.com/2018/03/06/fortnite---button-1520296499714.jpg", game_genre: "Battle royale")
g9 = Game.create(title: "Apex Legends", image_url: "https://upload.wikimedia.org/wikipedia/en/d/db/Apex_legends_cover.jpg", game_genre: "Battle royale")
g10 = Game.create(title: "Call of Duty: Modern Warfare", image_url: "https://m.media-amazon.com/images/M/MV5BMTc3NWY2ZTMtNTNlZC00MWM2LWI5MzYtMmU1YzY0ODk5ZjQ1XkEyXkFqcGdeQXVyODA2MTkwODk@._V1_.jpg", game_genre: "Shooter")
g11 = Game.create(title: "Call of Duty: Vanguard", image_url: "https://assets-prd.ignimgs.com/2021/08/17/call-of-duty-vanguard-button-00-1629164778736.jpg", game_genre: "Shooter")
g12 = Game.create(title: "Among Us", image_url: "https://upload.wikimedia.org/wikipedia/en/9/9a/Among_Us_cover_art.jpg", game_genre: "Multiplayer")

puts "🌱 Creating Users..."
u1 = User.create(username: Faker::Internet.username, password: Faker::Internet.password)
u2 = User.create(username: Faker::Internet.username, password: Faker::Internet.password)
u3 = User.create(username: Faker::Internet.username, password: Faker::Internet.password)
u4 = User.create(username: Faker::Internet.username, password: Faker::Internet.password)
u5 = User.create(username: Faker::Internet.username, password: Faker::Internet.password)
u6 = User.create(username: Faker::Internet.username, password: Faker::Internet.password)
u7 = User.create(username: Faker::Internet.username, password: Faker::Internet.password)
u8 = User.create(username: Faker::Internet.username, password: Faker::Internet.password)
u9 = User.create(username: Faker::Internet.username, password: Faker::Internet.password)
u10 = User.create(username: Faker::Internet.username, password: Faker::Internet.password)
u11 = User.create(username: Faker::Internet.username, password: Faker::Internet.password)
u12 = User.create(username: Faker::Internet.username, password: Faker::Internet.password)


puts "🌱 Creating Reviews..."
Review.create(review: "This game is really good", game_id: g9.id, user_id: u4.id)
Review.create(review: "Terrible Game! Why would you play this.", game_id: g4.id, user_id: u9.id)
Review.create(review: "This game is my LIFE!! I can't explain the joy.", game_id: g10.id, user_id: u11.id)
Review.create(review: "Who the hell came up with this idea? We need to have a talk.", game_id: g1.id, user_id: u12.id)
Review.create(review: "It was okay. I guess", game_id: g3.id, user_id: u3.id)
Review.create(review: "I can't wait for the sequel to come out.", game_id: g6.id, user_id: u8.id)
Review.create(review: "Reminds me of the old halo multiplayer days.", game_id: g1.id, user_id: u12.id)
Review.create(review: "WHY? Just Why?", game_id: g11.id, user_id: u11.id)
Review.create(review: "No comment.", game_id: g8.id, user_id: u1.id)
Review.create(review: "I wasted money on this. I bet I could build better", game_id: g7.id, user_id: u1.id)
Review.create(review: "My dog enjoys watching me play this game!", game_id: g4.id, user_id: u5.id)
Review.create(review: "I think my grandma can play better than me. Fix the controls so I can be cool again.", game_id: g1.id, user_id: u1.id)
Review.create(review: "Really fun to play with friends!", game_id: g5.id, user_id: u9.id)
Review.create(review: "The developers really listen to the community!", game_id: g3.id, user_id: u8.id)
Review.create(review: "Too many hackers!!!!!!!!!!!!!", game_id: g12.id, user_id: u12.id)
Review.create(review: "By far my least favorite game!!!", game_id: g11.id, user_id: u4.id)
Review.create(review: "I play this game for hours on end and never get bored!", game_id: g6.id, user_id: u12.id)
Review.create(review: "I wish the servers didn't have so many issues", game_id: g8.id, user_id: u4.id)
Review.create(review: "Cant wait for next years release!!", game_id: g2.id, user_id: u9.id)
Review.create(review: "1/10", game_id: g5.id, user_id: u5.id)




puts "✅ Done seeding!"
