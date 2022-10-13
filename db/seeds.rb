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

Booking.destroy_all
Turtle.destroy_all
User.destroy_all

# admin user
admin = User.create(first_name: 'admin', last_name: 'admin0', email: 'admin@admin.com', password: 'admin123', password_confirmation: 'admin123')
admin.save

# users

julia_marie = User.create(first_name: 'Julia-Marie', last_name: 'Trudel', email: 'Julia-Marie@gmail.com', password: 'julia123', password_confirmation: 'julia123')
gordana =     User.create(first_name: 'Gordana', last_name: 'Marjanovic', email: 'Gordana@gmail.com', password: 'gordana123', password_confirmation: 'Gordana123')
olwyn =       User.create(first_name: 'Olwyn', last_name: 'Hogan', email: 'olwyn@gmail.com', password: 'olwyn123', password_confirmation: 'olwyn123')
jose =        User.create(first_name: 'Jose', last_name: 'Loayza', email: 'jose@gmail.com', password: 'jose123', password_confirmation: 'jose123')
jaqueline =   User.create(first_name: 'Jaqueline', last_name: 'Maldonado', email: 'jaqueline@gmail.com', password: 'jaqueline123', password_confirmation: 'jaqueline123')
patricio =    User.create(first_name: 'Patricio', last_name: 'Perez Herrero', email: 'patricio@gmail.com', password: 'patricio123', password_confirmation: 'patricio123')


# all the turtles
file = URI.open('https://res.cloudinary.com/dde8soxw5/image/upload/v1665675942/my-turtle/Raphael_ccb4zx.jpg')
raphael = Turtle.new(first_name: 'Raphael', last_name: 'Turtle', description: "the one and the only Raphael", price: '50')
raphael.photo.attach(io: file, filename: 'Raphael.png', content_type: 'image/jpg')
raphael.user = admin
raphael.save

file = URI.open('https://res.cloudinary.com/dde8soxw5/image/upload/v1665675938/my-turtle/Julia_g4gbiq.jpg')
julia = Turtle.new(first_name: 'Julia', last_name: 'Marie', description: "I alwats wanted to be a cute turtle", price: '40')
julia.photo.attach(io: file, filename: 'julia.png', content_type: 'image/jpg')
julia.user = julia_marie
julia.save

file = URI.open('https://res.cloudinary.com/dde8soxw5/image/upload/v1665675930/my-turtle/Chef-Tommy_gbzc3i.jpg')
tommy = Turtle.new(first_name: 'Chef', last_name: 'Tommy', description: "Chef me up! Chef me up !", price: '99')
tommy.photo.attach(io: file, filename: 'tommy.png', content_type: 'image/jpg')
tommy.user = olwyn
tommy.save

file = URI.open('https://res.cloudinary.com/dde8soxw5/image/upload/v1665675930/my-turtle/Grumpy-The-elder_xidgmq.jpg')
grumpy = Turtle.new(first_name: 'Grumpy', last_name: 'The elder', description: "Doesn't like to speak to much", price: '20')
grumpy.photo.attach(io: file, filename: 'grumpy.png', content_type: 'image/jpg')
grumpy.user = olwyn
grumpy.save

file = URI.open('https://res.cloudinary.com/dde8soxw5/image/upload/v1665675945/my-turtle/Sunny-Douglas_rar8pf.png')
sunny = Turtle.new(first_name: 'Sunny', last_name: 'Douglas', description: "Great for a movie night", price: '63')
sunny.photo.attach(io: file, filename: 'sunny.png', content_type: 'image/png')
sunny.user = gordana
sunny.save

file = URI.open('https://res.cloudinary.com/dde8soxw5/image/upload/v1665675940/my-turtle/Rick-Sanchez_f3dkds.png')
rick = Turtle.new(first_name: 'Rick', last_name: 'Sanchez', description: "Turtle Rick Wubba Lubba Dub-Dub !", price: '25')
rick.photo.attach(io: file, filename: 'rick.png', content_type: 'image/png')
rick.user = gordana
rick.save

file = URI.open('https://res.cloudinary.com/dde8soxw5/image/upload/v1665675939/my-turtle/Phenix-The-feeder_ycmkna.jpg')
phenix = Turtle.new(first_name: 'Phenix', last_name: 'The feeder', description: "Look at my amazing shell !", price: '42')
phenix.photo.attach(io: file, filename: 'phenix.png', content_type: 'image/jpg')
phenix.user = jose
phenix.save

file = URI.open('https://res.cloudinary.com/dlzusxobf/image/upload/v1653581961/turtle1_pfmapi.png')
jesse = Turtle.new(first_name: 'Jesse', last_name: 'The turtle', description: "Finaly leaving mom and dad place", price: '36')
jesse.photo.attach(io: file, filename: 'jesse.png', content_type: 'image/jpg')
jesse.user = jose
jesse.save

file = URI.open('https://res.cloudinary.com/dde8soxw5/image/upload/v1665675947/my-turtle/Max-Kulas_h9zu5u.png')
max = Turtle.new(first_name: 'Max', last_name: 'Kulas', description: "Great for cuddles", price: '19')
max.photo.attach(io: file, filename: 'max.png', content_type: 'image/jpg')
max.user = jaqueline
max.save

file = URI.open('https://res.cloudinary.com/dde8soxw5/image/upload/v1665675929/my-turtle/Gary-Vee_j001xv.png')
gary = Turtle.new(first_name: 'Gary', last_name: 'Vee', description: "Motivation coatch will get your life back in track !", price: '24')
gary.photo.attach(io: file, filename: 'gary.png', content_type: 'image/jpg')
gary.user = jaqueline
gary.save

file = URI.open('https://res.cloudinary.com/dde8soxw5/image/upload/v1665675933/my-turtle/Eric-Pluf_ujp24o.png')
eric = Turtle.new(first_name: 'Eric', last_name: 'Pluf', description: "All what he want is your love", price: '56')
eric.photo.attach(io: file, filename: 'eric.png', content_type: 'image/jpg')
eric.user = gordana
eric.save

file = URI.open('https://res.cloudinary.com/dde8soxw5/image/upload/v1665675944/my-turtle/Flipper-Flipped_bpqrbz.png')
flipper = Turtle.new(first_name: 'Flipper', last_name: 'Flipped', description: "Will make you coffee in the morning", price: '74')
flipper.photo.attach(io: file, filename: 'flipper.png', content_type: 'image/jpg')
flipper.user = patricio
flipper.save

Turtle.all.each do |turtle|
  review_seed = Review.create(rating: '5', comment: "such a nice turtle ! we had an amazing time this was great liek so great oh my god so great amazing like freaking amzing wow so good amazing I really recomand !")
  review_seed.turtle_id = turtle.id
  review_seed.save
end
Turtle.all.each do |turtle|
  review_seed = Review.create(rating: '5', comment: "such a nice turtle ! we had an amazing time this was great liek so great oh my god so great amazing like freaking amzing wow so good amazing I really recomand !")
  review_seed.turtle_id = turtle.id
  review_seed.save
end
Turtle.all.each do |turtle|
  review_seed = Review.create(rating: '5', comment: "such a nice turtle ! we had an amazing time this was great liek so great oh my god so great amazing like freaking amzing wow so good amazing I really recomand !")
  review_seed.turtle_id = turtle.id
  review_seed.save
end

  # old seeds


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
