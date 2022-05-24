require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# user = User.create!(first_name: 'Luke', last_name: 'A', email: 'a@gmail.com', password: 'aaaaaaa')
# turtle1 = Turtle.create!(first_name: 'Manny', last_name: 'Macmillan', user_id: user.id)
# # turtle2 = Turtle.create(first_name: 'Mamphis', last_name: 'McCarthy')
# #
# puts "#{Turtle.count} turtles created"

User.destroy_all
Turtle.destroy_all

20.times do
  user = User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: 'password',
    password_confirmation: 'password'
  )

  turtle = Turtle.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name
  )
  turtle.user = user
  turtle.save
end
