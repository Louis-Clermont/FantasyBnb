# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

# Create 5 fake destinations
5.times do
  User.create!(
    email: Faker::Internet.email,
    password: Faker::Internet.password
  )
end

5.times do
  Destination.create!(
    user_id: User.pluck(:id).sample,
    address: Faker::Address.full_address,
    price: Faker::Number.between(from: 100, to: 1000),
    description: Faker::Lorem.paragraph
  )
end

5.times do
  Booking.create!(
    user_id: User.pluck(:id).sample,
    destination_id: Destination.pluck(:id).sample,
    total_price: Faker::Number.between(from: 100, to: 1000),
    start_date: Faker::Date.between(from: Date.today, to: 1.year.from_now),
    end_date: Faker::Date.between(from: 1.year.from_now, to: 2.years.from_now)
  )
end
