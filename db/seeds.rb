# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

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
  password: "123456"
)

baggins = User.create!(
  email: "bilbo@yahoo.com",
  password: "123456"
)

chani = User.create!(
  email: "chani@gmail.com",
  password: "123456"
)

joi = User.create!(
  email: "joi@hotmail.com",
  password: "123456"
)

saruman = User.create!(
  email: "saruman@bing.com",
  password: "123456"
)

jon = User.create!(
  email: "j.snow@yahoo.com",
  password: "123456"
)

hogwarts =  Destination.create!(
  user: dumbledore,
  address: "Hogwarts Castle, Highlands, Scotland, Great Britain",
  price: 1000000,
  description: "It's a magical place!"
)

 shire =  Destination.create!(
  user: baggins,
  address: "Northwest of Middle-earth",
  price: 1000000,
  description: "It's a magical place!"
)

arrakis =  Destination.create!(
  user: chani,
  address: "The Valley of the Moon",
  price: 1000000,
  description: "It's a magical place!"
)

los_angeles =  Destination.create!(
  user: joi,
  address: "LA",
  price: 1000000,
  description: "It's the future! 2049!"
)

mordor =  Destination.create!(
  user: saruman,
  address: "Hogwarts Castle, Highlands, Scotland, Great Britain",
  price: 1000000,
  description: "It's a magical place!"
)

castle_black =  Destination.create!(
  user: jon,
  address: "The wall",
  price: 1000000,
  description: "It's a magical place!"
)

  Booking.create!(
    user: host_user,
    destination_id: Destination.pluck(:id).sample,
    total_price: Faker::Number.between(from: 100, to: 1000),
    start_date: Faker::Date.between(from: Date.today, to: 1.year.from_now),
    end_date: Faker::Date.between(from: 1.year.from_now, to: 2.years.from_now)
  )
