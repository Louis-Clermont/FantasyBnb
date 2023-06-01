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

host_user = User.create!(
  email: "host@aol.com",
  password: "123456"
)
dumbledore = User.create!(
  email: "a_dumbledore@aol.com",
  password: "123456",
  first_name: "Albus",
  last_name: "Dumbledore"
)

baggins = User.create!(
  email: "bilbo@yahoo.com",
  password: "123456",
  first_name: "Bilbo",
  last_name: "Baggins"
)

chani = User.create!(
  email: "chani@gmail.com",
  password: "123456",
  first_name: "Chani",
  last_name: ""
)

joi = User.create!(
  email: "joi@hotmail.com",
  password: "123456",
  first_name: "Joi",
  last_name: "Dumbledore"
)

saruman = User.create!(
  email: "saruman@bing.com",
  password: "123456",
  first_name: "Saruman",
  last_name: "Dumbledore"
)

jon = User.create!(
  email: "j.snow@yahoo.com",
  password: "123456",
  first_name: "Jon",
  last_name: "Snow"
)

hogwarts =  Destination.create!(
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


 shire =  Destination.create!(
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

arrakis =  Destination.create!(
  user: chani,
  title: "Arrakis",
  address: "The Valley of the Moon",
  price: 1000000,
  description: "It's a magical place!"
)

file = URI.open("https://ca-times.brightspotcdn.com/dims4/default/174fab1/2147483647/strip/true/crop/2865x1200+0+0/resize/2000x838!/quality/80/?url=https%3A%2F%2Fcalifornia-times-brightspot.s3.amazonaws.com%2F9b%2F01%2F1bfa265c413b98d53b579556ea97%2Fla-en-dune-movie-production-design-052.JPG")
arrakis.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
file = URI.open("https://images.unsplash.com/photo-1583997052103-b4a1cb974ce5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aG9nd2FydHN8ZW58MHx8MHx8fDA%3D&w=1000&q=80")
arrakis.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
file = URI.open("https://images.unsplash.com/photo-1583997052103-b4a1cb974ce5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aG9nd2FydHN8ZW58MHx8MHx8fDA%3D&w=1000&q=80")
arrakis.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
file = URI.open("https://images.unsplash.com/photo-1583997052103-b4a1cb974ce5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aG9nd2FydHN8ZW58MHx8MHx8fDA%3D&w=1000&q=80")
arrakis.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
file = URI.open("https://images.unsplash.com/photo-1583997052103-b4a1cb974ce5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aG9nd2FydHN8ZW58MHx8MHx8fDA%3D&w=1000&q=80")
arrakis.photos.attach(io: file, filename: "nes.png", content_type: "image/png")

los_angeles =  Destination.create!(
  user: joi,
  title: "Los Angeles (2049)",
  address: "LA",
  price: 1000000,
  description: "It's the future! 2049!"
)

file = URI.open("https://static.independent.co.uk/s3fs-public/thumbnails/image/2018/02/20/11/blade-runner-2049-city.jpg")
los_angeles.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
file = URI.open("https://images.unsplash.com/photo-1583997052103-b4a1cb974ce5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aG9nd2FydHN8ZW58MHx8MHx8fDA%3D&w=1000&q=80")
los_angeles.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
file = URI.open("https://images.unsplash.com/photo-1583997052103-b4a1cb974ce5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aG9nd2FydHN8ZW58MHx8MHx8fDA%3D&w=1000&q=80")
los_angeles.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
file = URI.open("https://images.unsplash.com/photo-1583997052103-b4a1cb974ce5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aG9nd2FydHN8ZW58MHx8MHx8fDA%3D&w=1000&q=80")
los_angeles.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
file = URI.open("https://images.unsplash.com/photo-1583997052103-b4a1cb974ce5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aG9nd2FydHN8ZW58MHx8MHx8fDA%3D&w=1000&q=80")
los_angeles.photos.attach(io: file, filename: "nes.png", content_type: "image/png")

mordor =  Destination.create!(
  user: saruman,
  title: "Modor",
  address: "Hogwarts Castle, Highlands, Scotland, Great Britain",
  price: 1000000,
  description: "It's a magical place!"
)

file = URI.open("https://cdn.vox-cdn.com/thumbor/HAstnw_9Iupryue6ovUGjx-DH-M=/0x0:3816x1575/1200x0/filters:focal(0x0:3816x1575):no_upscale()/cdn.vox-cdn.com/uploads/chorus_asset/file/22280932/ROTK_eye_of_sauron.jpg")
los_angeles.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
file = URI.open("https://images.unsplash.com/photo-1583997052103-b4a1cb974ce5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aG9nd2FydHN8ZW58MHx8MHx8fDA%3D&w=1000&q=80")
los_angeles.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
file = URI.open("https://images.unsplash.com/photo-1583997052103-b4a1cb974ce5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aG9nd2FydHN8ZW58MHx8MHx8fDA%3D&w=1000&q=80")
los_angeles.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
file = URI.open("https://images.unsplash.com/photo-1583997052103-b4a1cb974ce5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aG9nd2FydHN8ZW58MHx8MHx8fDA%3D&w=1000&q=80")
los_angeles.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
file = URI.open("https://images.unsplash.com/photo-1583997052103-b4a1cb974ce5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aG9nd2FydHN8ZW58MHx8MHx8fDA%3D&w=1000&q=80")
los_angeles.photos.attach(io: file, filename: "nes.png", content_type: "image/png")

castle_black =  Destination.create!(
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

  Booking.create!(
    user: host_user,
    destination_id: Destination.pluck(:id).sample,
    total_price: Faker::Number.between(from: 100, to: 1000),
    start_date: Faker::Date.between(from: Date.today, to: 1.year.from_now),
    end_date: Faker::Date.between(from: 1.year.from_now, to: 2.years.from_now)
  )
