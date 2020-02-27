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

user_4 = User.new(email: 'djbobby@gmail.nope', password: 'lookatmybeat')


url_1 = "https://res.cloudinary.com/dofat3r9t/video/upload/v1581447765/Blackthorn_Bedow_c1w6z4.mp3"
img_url_1 = "https://res.cloudinary.com/dofat3r9t/image/upload/v1582647356/goh-rhy-yan-XgsVB9Uwpq8-unsplash_p2gnbm.jpg"
sound_1 = Sound.new(title: 'Coolsound', bpm: 100, genre: "Hip-hop" ,price: 20, user_id: user_1.id, maxprice: 100, audio_url: url_1, cloudinary_img: img_url_1)
sound_1.save

url_2 = "https://res.cloudinary.com/dofat3r9t/video/upload/v1581447710/Drake_Type_Beat_Instrumental_-_Essence_Prod.Penacho_xfkw37.mp3"
img_url_2 = "https://res.cloudinary.com/dofat3r9t/image/upload/v1582647347/warren-wong-bh4LQHcOcxE-unsplash_suioga.jpg"
sound_2 = Sound.new(title: 'Coolersound', bpm: 110, genre: "Electro" ,price: 30, user_id: user_1.id, maxprice: 150, audio_url: url_2, cloudinary_img: img_url_2)
sound_2.save

url_3 = "https://res.cloudinary.com/dofat3r9t/video/upload/v1582368958/Schoolboy_Q_-_Hell_Of_A_Night_Instrumental_eas8fb.mp3"
img_url_3 = "https://res.cloudinary.com/dofat3r9t/image/upload/v1582647344/naveen-prajapat-OI7kPppj2-4-unsplash_sjimjc.jpg"
sound_3 = Sound.new(title: 'Beat this', bpm: 120, genre: "rock" ,price: 1, user_id: user_2.id, maxprice: 80, audio_url: url_3, cloudinary_img: img_url_3)
sound_3.save

url_4 = "https://res.cloudinary.com/dofat3r9t/video/upload/v1582369437/T.I._feat_Young_Thug_-_Aint_About_The_Money_official_instrumental_jknwm0.mp3"
img_url_4 = "https://res.cloudinary.com/dofat3r9t/image/upload/v1582647319/lethu-zimu-bkyKiFfV91Q-unsplash_wipqkg.jpg"
sound_4 = Sound.new(title: 'Rap song', bpm: 120, genre: "hip-hop" ,price: 10, user_id: user_2.id, maxprice: 1200, audio_url: url_4, cloudinary_img: img_url_4)
sound_4.save

url_5 = "https://res.cloudinary.com/dofat3r9t/video/upload/v1582370909/engelwood_-_crystal_dolphin_1_ywxhiz.mp3"
img_url_5 = "https://res.cloudinary.com/dofat3r9t/image/upload/v1582647310/warren-wong-iIV0PUqhs00-unsplash_x9iokm.jpg"
sound_5 = Sound.new(title: 'Dolphins', bpm: 120, genre: "Pop" ,price: 8, user_id: user_2.id, maxprice: 180, audio_url: url_5, cloudinary_img: img_url_5)
sound_5.save

url_6 = "https://res.cloudinary.com/dofat3r9t/video/upload/v1582370974/Miss_Chang_-_Chinese_Man_feat_Taiwan_MC_Cyph4_-_OFFICIAL_VIDEO_q5dvff.mp3"
img_url_6 = "https://res.cloudinary.com/dofat3r9t/image/upload/v1582647300/viktor-paris-tFkbdCf-l10-unsplash_xjz2fp.jpg"
sound_6 = Sound.new(title: 'Miss Chang', bpm: 120, genre: "Electro" ,price: 10, user_id: user_2.id, maxprice: 80, audio_url: url_6, cloudinary_img: img_url_6)
sound_6.save

url_7 = "https://res.cloudinary.com/dofat3r9t/video/upload/v1582656320/Chinese_Man_Ft._La_Yegros_-_Siempre_Estas_-_LIVE_CONTENT_xdmtdc.mp3"
img_url_7 = "https://res.cloudinary.com/dofat3r9t/image/upload/v1582656318/brooks-leibee-27QcqVqgVg4-unsplash_p7wjtb.jpg"
sound_7 = Sound.new(title: 'Call of the wild', bpm: 120, genre: "Electro" ,price: 15, user_id: user_2.id, maxprice: 80, audio_url: url_7, cloudinary_img: img_url_7)
sound_7.save

url_8 = "https://res.cloudinary.com/dofat3r9t/video/upload/v1582656320/Chinese_Man_feat._ASM_-_Wolf_Live_Natura_Live_2019_zvnvpj.mp3"
img_url_8 = "https://res.cloudinary.com/dofat3r9t/image/upload/v1582656318/stephen-arnold-8ItNia0nMVA-unsplash_j7yxxl.jpg"
sound_8 = Sound.new(title: 'Escape', bpm: 120, genre: "hip-hop" ,price: 2, user_id: user_2.id, maxprice: 80, audio_url: url_8, cloudinary_img: img_url_8)
sound_8.save

url_9 = "https://res.cloudinary.com/dofat3r9t/video/upload/v1582656321/Chinese_Man_-_Artichaut_zk0m4w.mp3"
img_url_9 = "https://res.cloudinary.com/dofat3r9t/image/upload/v1582656318/max-felner-_yrCYuCjMYo-unsplash_tjwmyh.jpg"
sound_9 = Sound.new(title: 'Drum & drums', bpm: 120, genre: "Electro" ,price: 2, user_id: user_2.id, maxprice: 80, audio_url: url_9, cloudinary_img: img_url_9)
sound_9.save

url_10 = "https://res.cloudinary.com/dofat3r9t/video/upload/v1582656321/Deluxe_-_Tall_Ground_Official_Video_pz1gws.mp3"
img_url_10 = "https://res.cloudinary.com/dofat3r9t/image/upload/v1582656318/federico-rizzarelli-u_ZEd6zlMYw-unsplash_yipepu.jpg"
sound_10 = Sound.new(title: 'Fancy beat', bpm: 120, genre: "Electro" ,price: 1, user_id: user_2.id, maxprice: 80, audio_url: url_10, cloudinary_img: img_url_10)
sound_10.save

url_11 = "https://res.cloudinary.com/dofat3r9t/video/upload/v1582656321/Chinese_Man_-_Skank_in_the_Air_-_OFFICIAL_VIDEO_kda1dh.mp3"
img_url_11 = "https://res.cloudinary.com/dofat3r9t/image/upload/v1582656319/steve-halama-dfwFFQLvc0s-unsplash_cizcqz.jpg"
sound_11 = Sound.new(title: 'Magic Kobe', bpm: 120, genre: "Electro" ,price: 20, user_id: user_2.id, maxprice: 80, audio_url: url_11, cloudinary_img: img_url_11)
sound_11.save

url_12 = "https://res.cloudinary.com/dofat3r9t/video/upload/v1582656320/Chinese_Man_-_7th_Street_-_OFFICIAL_VIDEO_ayxwyz.mp3"
img_url_12 = "https://res.cloudinary.com/dofat3r9t/image/upload/v1582656319/aziz-acharki-PUvPZckRnOg-unsplash_qecxzg.jpg"
sound_12 = Sound.new(title: 'Lost memories', bpm: 120, genre: "rock" ,price: 10, user_id: user_2.id, maxprice: 80, audio_url: url_12, cloudinary_img: img_url_12)
sound_12.save

url_13 = "https://res.cloudinary.com/dofat3r9t/video/upload/v1582656322/Deluxe_-_Superman_feat._Taiwan_Mc_Plex_Rock_kbnzmw.mp3"
img_url_13 = "https://res.cloudinary.com/dofat3r9t/image/upload/v1582656320/kal-visuals-BGD6lA_0kGs-unsplash_x9bwwa.jpg"
sound_13 = Sound.new(title: 'Mysterious vibes', bpm: 120, genre: "rock" ,price: 10, user_id: user_2.id, maxprice: 80, audio_url: url_13, cloudinary_img: img_url_13)
sound_13.save

url_14 = "https://res.cloudinary.com/dofat3r9t/video/upload/v1582656322/Chinese_Man_-_Indi_Groove_-_The_Groove_Sessions_Live_2009-2010_gvs45k.mp3"
img_url_14 = "https://res.cloudinary.com/dofat3r9t/image/upload/v1582656319/sebastian-hemetsberger-lrPfuJsbWhQ-unsplash_yvcd4p.jpg"
sound_14 = Sound.new(title: 'Jimmys style', bpm: 120, genre: "hip-hop" ,price: 20, user_id: user_2.id, maxprice: 80, audio_url: url_14, cloudinary_img: img_url_14)
sound_14.save

url_15 = "https://res.cloudinary.com/dofat3r9t/video/upload/v1582656321/Racing_with_the_Sun_-_Chinese_Man_Official_Video_ktgqqf.mp3"
img_url_15 = "https://res.cloudinary.com/dofat3r9t/image/upload/v1582656320/steve-halama-oC1sQVnf_EY-unsplash_onhkgh.jpg"
sound_15 = Sound.new(title: 'Sensual vibbin', bpm: 120, genre: "dub" ,price: 1, user_id: user_2.id, maxprice: 80, audio_url: url_15, cloudinary_img: img_url_15)
sound_15.save

url_16 = "https://res.cloudinary.com/dofat3r9t/video/upload/v1582656322/Miss_Chang_-_Chinese_Man_feat_Taiwan_MC_Cyph4_-_OFFICIAL_VIDEO_1_al0uwn.mp3"
img_url_16 = "https://res.cloudinary.com/dofat3r9t/image/upload/v1582656322/alexander-krivitskiy-xA1Hq2bQdXU-unsplash_i8iycv.jpg"
sound_16 = Sound.new(title: 'Shank in the air', bpm: 120, genre: "dub" ,price: 10, user_id: user_2.id, maxprice: 80, audio_url: url_16, cloudinary_img: img_url_16)
sound_16.save

# sounds owned by user_1

url_17 = "https://res.cloudinary.com/dofat3r9t/video/upload/v1582659118/Guts_-_You_re_Living_Like_Pigs_veskru.mp3"
sound_17 = Sound.new(title: 'You are living like kings', bpm: 120, genre: "dub" ,price: 18, user_id: user_2.id, maxprice: 80, audio_url: url_17, owner: 1)
sound_17.save

url_18 = "https://res.cloudinary.com/dofat3r9t/video/upload/v1582659118/Guts_-_Want_It_Back_feat._Patrice_Official_Video_Clip_pfr0mz.mp3"
sound_18 = Sound.new(title: 'Want it back', bpm: 120, genre: "dub" ,price: 8, user_id: user_3.id, maxprice: 80, audio_url: url_18, owner: 1)
sound_18.save

url_20 = "https://res.cloudinary.com/dofat3r9t/video/upload/v1582659118/Chinese_Man_-_Step_Back_Official_Music_Video_kx0lyt.mp3"
sound_20 = Sound.new(title: 'Step Back', bpm: 120, genre: "dub" ,price: 55, user_id: user_2.id, maxprice: 80, audio_url: url_20, owner: 1)
sound_20.save

url_19 = "https://res.cloudinary.com/dofat3r9t/video/upload/v1582659118/Chinese_Man_-_Shikantaza_Official_Music_Video_mralk2.mp3"
sound_19 = Sound.new(title: 'Shikantanza', bpm: 120, genre: "dub" ,price: 28, user_id: user_2.id, maxprice: 80, audio_url: url_19, owner: 1)
sound_19.save



auction_1 = Auction.create(amount: 78, user_id: user_3.id, sound_id: sound_1.id)

auction_2 = Auction.create(amount: 40, user_id: user_3.id, sound_id: sound_2.id)

auction_3 = Auction.create(amount: 38, user_id: user_1.id, sound_id: sound_3.id)

