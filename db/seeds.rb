# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Sound.destroy_all
Auction.destroy_all

user_1 = User.new(email: 'me@hotmail.com', password: 'hello123')
user_1.save

user_2 = User.new(email: 'mika@hotmail.com', password: '12345678')
user_2.save

user_3 = User.new(email: 'jenni@hotmail.com', password: '12345678')
user_3.save

sound_1 = Sound.new(title: 'Coolsound', bpm: 100, genre: "hip-hop" ,price: 20, user_id: user_1.id, maxprice: 100)

sound_2 = Sound.new(title: 'Coolersound', bpm: 110, genre: "Electro" ,price: 30, user_id: user_1.id, maxprice: 150)
sound_2.save

sound_3 = Sound.new(title: 'Rap song from Mika', bpm: 120, genre: "Pop" ,price: 25, user_id: user_2.id, maxprice: 80)
sound_3.save

sound_4 = Sound.new(title: 'Pop song from Mika', bpm: 112, genre: "Rock" ,price: 45, user_id: user_2.id, maxprice: 150)

sound_4.save

auction_1 = Auction.create(amount: 78, user_id: user_3.id, sound_id: sound_1.id)

auction_2 = Auction.create(amount: 10, user_id: user_3.id, sound_id: sound_3.id)

auction_3 = Auction.create(amount: 38, user_id: user_1.id, sound_id: sound_4.id)

url_1 = "https://res.cloudinary.com/dofat3r9t/video/upload/v1581447765/Blackthorn_Bedow_c1w6z4.mp3"
sound_1 = Sound.new(title: 'Coolsound', bpm: 100, genre: "hip-hop" ,price: 20, user_id: user_1.id, maxprice: 100, audio_url: url_1)
sound_1.save

url_2 = "https://res.cloudinary.com/dofat3r9t/video/upload/v1581447710/Drake_Type_Beat_Instrumental_-_Essence_Prod.Penacho_xfkw37.mp3"
sound_2 = Sound.new(title: 'Coolersound', bpm: 110, genre: "Electro" ,price: 30, user_id: user_1.id, maxprice: 150, audio_url: url_2)
sound_2.save

url_3 = Cloudinary::Uploader.upload_large("app/assets/audio/running_out.mp3")["url"]
sound_3 = Sound.new(title: 'Rap song from Mika', bpm: 120, genre: "Pop" ,price: 25, user_id: user_2.id, maxprice: 80, audio_url: url_3)
sound_3.save

url_4 = Cloudinary::Uploader.upload_large("app/assets/audio/rave_digger.mp3")["url"]
sound_3 = Sound.new(title: 'Rap song from Mika', bpm: 120, genre: "Pop" ,price: 25, user_id: user_2.id, maxprice: 80, audio_url: url_3)
sound_3.save
