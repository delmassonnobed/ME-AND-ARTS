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
file = File.open("app/assets/images/joli.jpg")
sound_1.mp3_file.attach(io: file, filename: 'sound_1.mp3')

sound_1.save

sound_2 = Sound.new(title: 'Coolersound', bpm: 110, genre: "Electro" ,price: 30, user_id: user_1.id, maxprice: 150)
sound_2.save

sound_3 = Sound.new(title: 'Rap song from Mika', bpm: 120, genre: "Pop" ,price: 25, user_id: user_2.id, maxprice: 80)
sound_3.save

sound_4 = Sound.new(title: 'Pop song from Mika', bpm: 112, genre: "Rock" ,price: 45, user_id: user_2.id, maxprice: 150)

sound_4.save

auction_1 = Auction.create(amount: 78, user_id: user_3.id, sound_id: sound_1.id)

auction_2 = Auction.create(amount: 10, user_id: user_3.id, sound_id: sound_3.id)

auction_3 = Auction.create(amount: 38, user_id: user_1.id, sound_id: sound_4.id)
