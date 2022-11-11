puts "🌱 Seeding..."

Artist.destroy_all
Album.destroy_all
Song.destroy_all
Review.destroy_all
User.destroy_all


# Seed your database here
artist1 = Artist.create(name: "Drake")
artist2 = Artist.create(name: "J. Cole")
artist3 = Artist.create(name: "Beyonce")
artist4 = Artist.create(name: "Giveon")
artist5 = Artist.create(name: "Taylor Swift")
artist6 = Artist.create(name: "Black Panther")

album1 = Album.create(name: 'Her Loss', image_url: 'https://res.cloudinary.com/dphlf7a8o/image/upload/v1668016652/her_loss_zlnjnz.jpg', artist_id: artist1.id)
album2 = Album.create(name: '2014 Forest Hills Drive', image_url: 'https://res.cloudinary.com/dl4v1crga/image/upload/v1668164754/forest_hills_ivayzo.jpg', artist_id: artist2.id)
album3 = Album.create(name: 'Renaissance', image_url: 'https://res.cloudinary.com/dl4v1crga/image/upload/v1668164628/renaisBeyonce_zv2x00.jpg', artist_id: artist3.id)
album4 = Album.create(name: 'Give or Take', image_url: 'https://res.cloudinary.com/dl4v1crga/image/upload/v1668164627/givetake_by2rsh.jpg', artist_id: artist4.id)
album5 = Album.create(name: 'Midnights', image_url: 'https://res.cloudinary.com/dl4v1crga/image/upload/v1668164628/midtay_nyfvio.jpg', artist_id: artist5.id)
album6 = Album.create(name: 'Black Panther', image_url: 'https://res.cloudinary.com/dl4v1crga/image/upload/v1668164628/blackalbum_kvfnfr.jpg', artist_id: artist6.id)


song1 = Song.create(name: "Rich Flex", artist_id: artist1.id, album_id: album1.id, iframe_url: 'https://www.youtube.com/embed/I4DjHHVHWAE', likes: 5)
song2 = Song.create(name: "Major Distribution", artist_id: artist1.id, album_id: album1.id, iframe_url: 'https://www.youtube.com/embed/LfPYX03_4rA', likes: 10)
song3 = Song.create(name: "On BS", artist_id: artist1.id, album_id: album1.id, iframe_url: 'https://www.youtube.com/embed/PNFZHl1H8zY', likes: 8)
song4 = Song.create(name: "BackOutsideBoyz", artist_id: artist1.id, album_id: album1.id, iframe_url: 'https://www.youtube.com/embed/srlxBpbKz70', likes:6)
song5 = Song.create(name: "Privileged Rappers", artist_id: artist1.id, album_id: album1.id, iframe_url: 'https://www.youtube.com/embed/lF3K70KR5Xk', likes:7)
song6 = Song.create(name: 'January 28th', artist_id: artist2.id, album_id: album2.id, iframe_url: 'https://www.youtube.com/embed/UZwyUC4gloM', likes:10)
song7 = Song.create(name: 'Wet Dreamz', artist_id: artist2.id, album_id: album2.id, iframe_url: 'https://www.youtube.com/embed/eCGV26aj-mM', likes:15)
song8 = Song.create(name: "03' Adolescence", artist_id: artist2.id, album_id: album2.id, iframe_url: 'https://www.youtube.com/embed/_L_s5_LT3bM', likes: 1)
song9 = Song.create(name: "Fire Squad", artist_id: artist2.id, album_id: album2.id, iframe_url: 'https://www.youtube.com/embed/HCURqfqL8sI', likes: 6)
song10 = Song.create(name: "G.O.M.D", artist_id: artist2.id, album_id: album2.id, iframe_url: 'https://www.youtube.com/embed/vHU6ZRQJ50Q', likes:15)
song10 = Song.create(name: "I'M THAT GIRL", artist_id: artist3.id, album_id: album3.id, iframe_url: 'https://www.youtube.com/embed/b2xLsCo8zmQ', likes:15)
song10 = Song.create(name: "COZY", artist_id: artist3.id, album_id: album3.id, iframe_url: 'https://www.youtube.com/embed/81j9gt1rXuk', likes:15)
song10 = Song.create(name: "ALIEN SUPERSTAR", artist_id: artist3.id, album_id: album3.id, iframe_url: 'https://www.youtube.com/embed/e_aT9pAGQo8', likes:15)
song10 = Song.create(name: "CUFF IT", artist_id: artist3.id, album_id: album3.id, iframe_url: 'https://www.youtube.com/embed/yrtWLyp5gLI', likes:15)
song10 = Song.create(name: "ENERGY", artist_id: artist3.id, album_id: album3.id, iframe_url: 'https://www.youtube.com/embed/O9rk6ldyFkA', likes:15)
song10 = Song.create(name: "Let Me Go", artist_id: artist4.id, album_id: album4.id, iframe_url: 'https://www.youtube.com/embed/LA_UQnLyCjA', likes:15)
song10 = Song.create(name: "Scarred", artist_id: artist4.id, album_id: album4.id, iframe_url: 'https://www.youtube.com/embed/kZMxUSWiFJs', likes:15)
song10 = Song.create(name: "dec 11th", artist_id: artist4.id, album_id: album4.id, iframe_url: 'https://www.youtube.com/embed/l4M_Y1Uk2uw', likes:15)
song10 = Song.create(name: "This Will Do", artist_id: artist4.id, album_id: album4.id, iframe_url: 'https://www.youtube.com/embed/R_bNSYCxIpo', likes:15)
song10 = Song.create(name: "Get To You", artist_id: artist4.id, album_id: album4.id, iframe_url: 'https://www.youtube.com/embed/x68ZX_ubJuw', likes:15)
song10 = Song.create(name: "Lavender Haze", artist_id: artist5.id, album_id: album5.id, iframe_url: 'https://www.youtube.com/embed/mkR_Qwix4Ho', likes:15)
song10 = Song.create(name: "Maroon", artist_id: artist5.id, album_id: album5.id, iframe_url: 'https://www.youtube.com/embed/lvHZjvIyqsk', likes:15)
song10 = Song.create(name: "Anti-Hero", artist_id: artist5.id, album_id: album5.id, iframe_url: 'https://www.youtube.com/embed/b1kbLwvqugk', likes:15)
song10 = Song.create(name: "Snow On The Beach", artist_id: artist5.id, album_id: album5.id, iframe_url: 'https://www.youtube.com/embed/ycE7bUq3-2k', likes:15)
song10 = Song.create(name: "You're On Your Own, Kid", artist_id: artist5.id, album_id: album5.id, iframe_url: 'https://www.youtube.com/embed/7Gbg6Z70J7E', likes:15)
song10 = Song.create(name: "Black Panther", artist_id: artist6.id, album_id: album6.id, iframe_url: 'https://www.youtube.com/embed/YISVENOMaB4', likes:15)
song10 = Song.create(name: "All The Stars", artist_id: artist6.id, album_id: album6.id, iframe_url: 'https://www.youtube.com/embed/mSjln6Fj9EY', likes:15)
song10 = Song.create(name: "X", artist_id: artist6.id, album_id: album6.id, iframe_url: 'https://www.youtube.com/embed/kkwuPP2qohc', likes:15)
song10 = Song.create(name: "The Ways", artist_id: artist6.id, album_id: album6.id, iframe_url: 'https://www.youtube.com/embed/zfuAvKgo-_8', likes:15)
song10 = Song.create(name: "Opps", artist_id: artist6.id, album_id: album6.id, iframe_url: 'https://www.youtube.com/embed/1lxGCUQSESQ', likes:15)


user1 = User.create(name: Faker::Name.name)
user2 = User.create(name: Faker::Name.name)
user3 = User.create(name: Faker::Name.name)

review1 = Review.create(comment: "This is trash", song_id: song1.id, user_id: user1.id )
review2 = Review.create(comment: "Drake is the goat", song_id: song3.id, user_id: user2.id)
review3 = Review.create(comment: "J.cole rhymes deep", song_id: song7.id, user_id: user3.id)
review4 = Review.create(comment: "This is why i love cole", song_id: song9.id, user_id: user1.id)

puts "✅ Done seeding!"
