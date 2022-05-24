# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(email: "user@gmail.com", password: "qwerty", password_confirmation: "qwerty", :turtle_id)
turtles = Turtle.create([{ first_name: 'Manny', last_name: 'One' }, { first_name: 'Poney', last_name: 'Two' },{ first_name: 'Bear', last_name: 'Three' }])

turtle1 = Turtle.create([{first_name: 'Manny', last_name: 'Macmillan'}])
turtle2 = Turtle.create([{first_name: 'Mamphis', last_name: 'Murphy'}])
