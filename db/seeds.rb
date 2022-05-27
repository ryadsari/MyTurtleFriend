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

admin = User.create(first_name: 'admin', last_name: 'admin0', email: 'admin@gmail.com', password: 'admin123', password_confirmation: 'admin123')
admin.save


# all the turtles
file = URI.open('https://res.cloudinary.com/dlzusxobf/image/upload/v1653575355/development/5_ndptts.jpg')
raphael = Turtle.new(first_name: 'Raphael', last_name: 'Turtle', description: "the one and the only Raphael", price: '500')
raphael.photo.attach(io: file, filename: 'Raphael.png', content_type: 'image/jpg')
raphael.save

file = URI.open('https://res.cloudinary.com/dlzusxobf/image/upload/v1653575356/development/4_yunaxt.jpg')
julia = Turtle.new(first_name: 'Julia', last_name: 'The turtle', description: "the one and the only Raphael", price: '500')
julia.photo.attach(io: file, filename: 'julia.png', content_type: 'image/jpg')
julia.save

file = URI.open('https://res.cloudinary.com/dlzusxobf/image/upload/v1653575355/development/3_ynz4du.jpg')
grumpy = Turtle.new(first_name: 'Grumpy', last_name: 'turtle', description: "the one and the only Raphael", price: '500')
grumpy.photo.attach(io: file, filename: 'grumpy.png', content_type: 'image/jpg')
grumpy.save

file = URI.open('https://res.cloudinary.com/dlzusxobf/image/upload/v1653575355/development/1_tun6ie.jpg')
tommy = Turtle.new(first_name: 'Chef', last_name: 'Tommy', description: "the one and the only Raphael", price: '500')
tommy.photo.attach(io: file, filename: 'tommy.png', content_type: 'image/jpg')
tommy.save

file = URI.open('https://res.cloudinary.com/dlzusxobf/image/upload/v1653575356/development/4_yunaxt.jpg')
julia = Turtle.new(first_name: 'Julia', last_name: 'The turtle', description: "the one and the only Raphael", price: '500')
julia.photo.attach(io: file, filename: 'julia.png', content_type: 'image/jpg')
julia.save

file = URI.open('https://res.cloudinary.com/dlzusxobf/image/upload/v1653575356/development/4_yunaxt.jpg')
julia = Turtle.new(first_name: 'Julia', last_name: 'The turtle', description: "the one and the only Raphael", price: '500')
julia.photo.attach(io: file, filename: 'julia.png', content_type: 'image/jpg')
julia.save

file = URI.open('https://res.cloudinary.com/dlzusxobf/image/upload/v1653575356/development/4_yunaxt.jpg')
julia = Turtle.new(first_name: 'Julia', last_name: 'The turtle', description: "the one and the only Raphael", price: '500')
julia.photo.attach(io: file, filename: 'julia.png', content_type: 'image/jpg')
julia.save

file = URI.open('https://res.cloudinary.com/dlzusxobf/image/upload/v1653575356/development/4_yunaxt.jpg')
julia = Turtle.new(first_name: 'Julia', last_name: 'The turtle', description: "the one and the only Raphael", price: '500')
julia.photo.attach(io: file, filename: 'julia.png', content_type: 'image/jpg')
julia.save

file = URI.open('https://res.cloudinary.com/dlzusxobf/image/upload/v1653575356/development/4_yunaxt.jpg')
julia = Turtle.new(first_name: 'Julia', last_name: 'The turtle', description: "the one and the only Raphael", price: '500')
julia.photo.attach(io: file, filename: 'julia.png', content_type: 'image/jpg')
julia.save

file = URI.open('https://res.cloudinary.com/dlzusxobf/image/upload/v1653575356/development/4_yunaxt.jpg')
julia = Turtle.new(first_name: 'Julia', last_name: 'The turtle', description: "the one and the only Raphael", price: '500')
julia.photo.attach(io: file, filename: 'julia.png', content_type: 'image/jpg')
julia.save

file = URI.open('https://res.cloudinary.com/dlzusxobf/image/upload/v1653575356/development/4_yunaxt.jpg')
julia = Turtle.new(first_name: 'Julia', last_name: 'The turtle', description: "the one and the only Raphael", price: '500')
julia.photo.attach(io: file, filename: 'julia.png', content_type: 'image/jpg')
julia.save

file = URI.open('https://res.cloudinary.com/dlzusxobf/image/upload/v1653575356/development/4_yunaxt.jpg')
julia = Turtle.new(first_name: 'Julia', last_name: 'The turtle', description: "the one and the only Raphael", price: '500')
julia.photo.attach(io: file, filename: 'julia.png', content_type: 'image/jpg')
julia.save






# 20.times do
#   user = User.create!(
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name,
#     email: Faker::Internet.email,
#     password: 'password',
#     password_confirmation: 'password'
#   )

#   turtle = Turtle.new(
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name,
#     price: rand(1..50)
#   )
#   turtle.user = user
#   turtle.save
# end
