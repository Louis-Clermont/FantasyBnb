# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

puts "Cleaning database"
Review.destroy_all
Booking.destroy_all
Destination.destroy_all
User.destroy_all

host_user = User.new(
  email: "host@aol.com",
  password: "123456"
)

file = URI.open("https://static.wikia.nocookie.net/harrypotter/images/c/c8/Mainfulcd.jpg/revision/latest?cb=20200413210532")
host_user.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
host_user.save!
puts "Hi Host"

harry = User.new(
  email: "harry_p@aol.com",
  password: "123456",
  first_name: "Harry",
  last_name: "Potta"
)

file = URI.open("https://assets-prd.ignimgs.com/2021/01/26/harry-potter-button-1611619333944.jpg")
harry.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
harry.save!
puts "Hi Harry P"

ron = User.new(
  email: "ron@aol.com",
  password: "123456",
  first_name: "Ron",
  last_name: "Weesle"
)

file = URI.open("https://imgix.bustle.com/rehost/2016/9/13/556a0b44-17b5-429c-8954-2dc926bfbc70.jpg?w=1200&h=630&fit=crop&crop=faces&fm=jpg")
ron.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
ron.save!
puts "Hi Ron"

hermione = User.new(
  email: "hg@aol.com",
  password: "123456",
  first_name: "Hermione",
  last_name: "Granger"
)

file = URI.open("https://pinkcorn.fr/wp-content/uploads/2022/03/quiz-difficile-hermione-granger.jpg")
hermione.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
hermione.save!
puts "Hi Hermione"

dumbledore = User.new(
  email: "a_dumbledore@aol.com",
  password: "123456",
  first_name: "Albus",
  last_name: "Dumbledore"
)
file = URI.open("https://images.ctfassets.net/usf1vwtuqyxm/1dmmUJzpRcWaUmMOCu8QwO/7e013145694566076d47fd004fd604c2/AlbusDumbledore_WB_F6_DumbledoreSittingInChair_Promo_080615_Port.jpg?w=914&q=70&fm=webp")
dumbledore.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
dumbledore.save!
puts "Hi Dumbledore"

baggins = User.new(
  email: "bilbo@yahoo.com",
  password: "123456",
  first_name: "Bilbo",
  last_name: "Baggins"
)
file = URI.open("https://grist.org/wp-content/uploads/2013/05/big_bilbo_2.jpg")
baggins.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
baggins.save!
puts "Hi Baggins"

chani = User.new(
  email: "chani@gmail.com",
  password: "123456",
  first_name: "Chani",
  last_name: ""
)

file = URI.open("https://static.wikia.nocookie.net/dune/images/4/4c/Dune_2020_Chani.jpg/revision/latest/scale-to-width-down/1000?cb=20200414181221")
chani.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
chani.save!
puts "Hi Chani"

joi = User.new(
  email: "joi@hotmail.com",
  password: "123456",
  first_name: "Joi",
  last_name: ""
)

file = URI.open("https://64.media.tumblr.com/988f9b7761eeb7add37d0c66eaa9ca03/a6ca10b2a1e5f4ec-94/s1280x1920/05ba51caa9ff493c1d40bae45fc607a57c440365.jpg")
joi.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
joi.save!
puts "Hi Joi"

saruman = User.new(
  email: "saruman@bing.com",
  password: "123456",
  first_name: "Saruman",
  last_name: ""
)

file = URI.open("https://i.ytimg.com/vi/Tkf7RhGPPww/maxresdefault.jpg")
saruman.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
saruman.save!
puts "Hi Saruman"

jon = User.new(
  email: "j.snow@yahoo.com",
  password: "123456",
  first_name: "Jon",
  last_name: "Snow"
)

file = URI.open("https://images.hindustantimes.com/img/2022/12/12/550x309/_38b36c44-c6e8-11e9-9ed0-dd7a6b36c3ad_1670826748640_1670826748640.jpg")
jon.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
jon.save!
puts "Hi Jon"

hogwarts =  Destination.new(
  user: dumbledore,
  title: "Hogwarts",
  address: "Hogwarts Castle, Highlands, Scotland, Great Britain",
  price: 1000000,
  description: "It's a magical place!"
)

file = URI.open("https://images.unsplash.com/photo-1583997052103-b4a1cb974ce5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aG9nd2FydHN8ZW58MHx8MHx8fDA%3D&w=1000&q=80")
hogwarts.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
file = URI.open("https://assets.mugglenet.com/wp-content/uploads/2020/04/Gryffindor-Common-Room.jpg")
hogwarts.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
file = URI.open("https://i.pinimg.com/originals/1a/6f/10/1a6f1089455b17f0c959468646070ceb.jpg")
hogwarts.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
file = URI.open("https://imgk.timesnownews.com/story/GRY.jpg?tr=w-1200,h-900")
hogwarts.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
file = URI.open("https://static.wikia.nocookie.net/harrypotter/images/f/fb/Room_of_Requirement_OotP.png/revision/latest?cb=20161215063619")
hogwarts.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
hogwarts.save!

 shire =  Destination.new(
  user: baggins,
  title: "The Shire",
  address: "Northwest of Middle-earth",
  price: 1000000,
  description: "It's a magical place!"
)

file = URI.open("https://dwgyu36up6iuz.cloudfront.net/heru80fdn/image/upload/c_fill,d_placeholder_cntraveler.png,fl_progressive,g_face,h_1080,q_80,w_1920/v1467328944/cntraveler_visiting-the-shire-by-drone.jpg")
shire.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
file = URI.open("https://i0.wp.com/www.newdelhitimes.com/wp-content/uploads/2021/12/2-25.jpg?fit=960%2C640&ssl=1")
shire.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
file = URI.open("https://i.redd.it/hxe68qejvdr31.jpg")
shire.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
file = URI.open("https://lawliberty.org/app/uploads/2020/01/The-Shire.jpg")
shire.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
file = URI.open("https://scontent-lhr8-1.xx.fbcdn.net/v/t39.30808-6/304921547_420469756850168_7970660740501511448_n.jpg?stp=dst-jpg_s960x960&_nc_cat=110&ccb=1-7&_nc_sid=e3f864&_nc_ohc=Py2GZKuCYv8AX8rCFdS&_nc_ht=scontent-lhr8-1.xx&oh=00_AfAKPQ3AxKh_BxfuYC_qZxM2jqvNH032278UQZM9v5CycA&oe=647CCF72")
shire.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
shire.save!

arrakis =  Destination.new(
  user: chani,
  title: "Arrakis",
  address: "The Valley of the Moon",
  price: 1000000,
  description: "It's a magical place!"
)

file = URI.open("https://ca-times.brightspotcdn.com/dims4/default/174fab1/2147483647/strip/true/crop/2865x1200+0+0/resize/2000x838!/quality/80/?url=https%3A%2F%2Fcalifornia-times-brightspot.s3.amazonaws.com%2F9b%2F01%2F1bfa265c413b98d53b579556ea97%2Fla-en-dune-movie-production-design-052.JPG")
arrakis.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
file = URI.open("https://www.stirworld.com/images/think/3115_Dune_2.jpg")
arrakis.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
file = URI.open("https://ca-times.brightspotcdn.com/dims4/default/61cb3ea/2147483647/strip/true/crop/2865x1200+0+0/resize/2000x838!/quality/80/?url=https%3A%2F%2Fcalifornia-times-brightspot.s3.amazonaws.com%2F14%2F38%2F56a1b2244c2380b3f9d79455631c%2Fla-en-dune-movie-production-design-050.JPG")
arrakis.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
file = URI.open("https://www.archpaper.com/wp-content/uploads/2021/11/DU-29026.jpg")
arrakis.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
file = URI.open("https://www.stirworld.com/images/think/3115_Dune_4.jpg?48")
arrakis.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
arrakis.save!

los_angeles =  Destination.new(
  user: joi,
  title: "Los Angeles (2049)",
  address: "LA",
  price: 1000000,
  description: "It's the future! 2049!"
)

file = URI.open("https://kordastudio.hu/wp-content/uploads/2017/01/blade-runner-cityscape_1r1z.jpg")
los_angeles.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
file = URI.open("https://failedarchitecture.com/wp-content/uploads/2017/11/Charlie-Clemoes-and-Alice-Sweitzer-Blade-Runner-2049-Trailer-Screenshot-2-5-1920x793.jpg")
los_angeles.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
file = URI.open("https://static.independent.co.uk/s3fs-public/thumbnails/image/2018/02/20/11/blade-runner-2049-city.jpg")
los_angeles.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
file = URI.open("https://api.time.com/wp-content/uploads/2017/10/blade-runner-2049-q-and-a-01.jpg")
los_angeles.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
file = URI.open("https://static.wikia.nocookie.net/bladerunner/images/9/9f/Tyrellbuilding.jpg/revision/latest?cb=20190725060704")
los_angeles.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
los_angeles.save!

mordor = Destination.new(
  user: saruman,
  title: "Modor",
  address: "Hogwarts Castle, Highlands, Scotland, Great Britain",
  price: 1000000,
  description: "It's a magical place!"
)

file = URI.open("https://e0.pxfuel.com/wallpapers/143/13/desktop-wallpaper-mordor-mordor-cinematic-sauron-eye.jpg")
mordor.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
file = URI.open("https://images.unsplash.com/photo-1583997052103-b4a1cb974ce5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aG9nd2FydHN8ZW58MHx8MHx8fDA%3D&w=1000&q=80")
mordor.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
file = URI.open("https://images.unsplash.com/photo-1583997052103-b4a1cb974ce5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aG9nd2FydHN8ZW58MHx8MHx8fDA%3D&w=1000&q=80")
mordor.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
file = URI.open("https://images.unsplash.com/photo-1583997052103-b4a1cb974ce5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aG9nd2FydHN8ZW58MHx8MHx8fDA%3D&w=1000&q=80")
mordor.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
file = URI.open("https://images.unsplash.com/photo-1583997052103-b4a1cb974ce5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aG9nd2FydHN8ZW58MHx8MHx8fDA%3D&w=1000&q=80")
mordor.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
mordor.save!

castle_black =  Destination.new(
  user: jon,
  title: "Castle Black",
  address: "The wall",
  price: 1000000,
  description: "It's a magical place!"
)

file = URI.open("https://www.thesun.co.uk/wp-content/uploads/2018/09/NINTCHDBPICT000436550223.jpg")
castle_black.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
file = URI.open("https://images.unsplash.com/photo-1583997052103-b4a1cb974ce5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aG9nd2FydHN8ZW58MHx8MHx8fDA%3D&w=1000&q=80")
castle_black.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
file = URI.open("https://images.unsplash.com/photo-1583997052103-b4a1cb974ce5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aG9nd2FydHN8ZW58MHx8MHx8fDA%3D&w=1000&q=80")
castle_black.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
file = URI.open("https://images.unsplash.com/photo-1583997052103-b4a1cb974ce5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aG9nd2FydHN8ZW58MHx8MHx8fDA%3D&w=1000&q=80")
castle_black.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
file = URI.open("https://images.unsplash.com/photo-1583997052103-b4a1cb974ce5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aG9nd2FydHN8ZW58MHx8MHx8fDA%3D&w=1000&q=80")
castle_black.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
castle_black.save!

  Booking.create!(
    user: host_user,
    destination_id: Destination.pluck(:id).sample,
    total_price: Faker::Number.between(from: 100, to: 1000),
    start_date: Faker::Date.between(from: Date.today, to: 1.year.from_now),
    end_date: Faker::Date.between(from: 1.year.from_now, to: 2.years.from_now)
  )

  booking1 = Booking.create!(
    user: harry,
    destination: hogwarts,
    total_price: Faker::Number.between(from: 100, to: 1000),
    start_date: Faker::Date.between(from: Date.today, to: 1.year.from_now),
    end_date: Faker::Date.between(from: 1.year.from_now, to: 2.years.from_now)
  )

  Review.create!(
    booking: booking1,
    rating: 5,
    comment: "It's good"
  )

  booking2 = Booking.create!(
    user: ron,
    destination: mordor,
    total_price: Faker::Number.between(from: 100, to: 1000),
    start_date: Faker::Date.between(from: Date.today, to: 1.year.from_now),
    end_date: Faker::Date.between(from: 1.year.from_now, to: 2.years.from_now)
  )

  Review.create!(
    booking: booking2,
    rating: 1,
    comment: "Way too hot!"
  )

  booking3 = Booking.create!(
    user: hermione,
    destination: shire,
    total_price: Faker::Number.between(from: 100, to: 1000),
    start_date: Faker::Date.between(from: Date.today, to: 1.year.from_now),
    end_date: Faker::Date.between(from: 1.year.from_now, to: 2.years.from_now)
  )

  Review.create!(
    booking: booking3,
    rating: 5,
    comment: "Beautiful, I'm going back next summer!"
  )

  booking4 = Booking.create!(
    user: harry,
    destination: los_angeles,
    total_price: Faker::Number.between(from: 100, to: 1000),
    start_date: Faker::Date.between(from: Date.today, to: 1.year.from_now),
    end_date: Faker::Date.between(from: 1.year.from_now, to: 2.years.from_now)
  )

  Review.create!(
    booking: booking4,
    rating: 5,
    comment: "Enjoyed"
  )

  booking5 = Booking.create!(
    user: dumbledore,
    destination: shire,
    total_price: Faker::Number.between(from: 100, to: 1000),
    start_date: Faker::Date.between(from: Date.today, to: 1.year.from_now),
    end_date: Faker::Date.between(from: 1.year.from_now, to: 2.years.from_now)
  )

  Review.create!(
    booking: booking5,
    rating: 5,
    comment: "It truely was magical"
  )

  booking6 = Booking.create!(
    user: dumbledore,
    destination: mordor,
    total_price: Faker::Number.between(from: 100, to: 1000),
    start_date: Faker::Date.between(from: Date.today, to: 1.year.from_now),
    end_date: Faker::Date.between(from: 1.year.from_now, to: 2.years.from_now)
  )

  Review.create!(
    booking: booking6,
    rating: 2,
    comment: "Never! Never again..."
  )

  booking7 = Booking.create!(
    user: saruman,
    destination: hogwarts,
    total_price: Faker::Number.between(from: 100, to: 1000),
    start_date: Faker::Date.between(from: Date.today, to: 1.year.from_now),
    end_date: Faker::Date.between(from: 1.year.from_now, to: 2.years.from_now)
  )

  Review.create!(
    booking: booking7,
    rating: 5,
    comment: "I recommend! Very nice."
  )
