# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u1 = User.new(first_name: "Joe", last_name:"Doe", entertainer_name: "JDD")
u2 = User.new(first_name: "Jee", last_name:"Dee", entertainer_name: "JDee")
u3 = User.new(first_name: "Bee", last_name:"Dee", entertainer_name: "BDee")
u4 = User.new(first_name: "Cee", last_name:"Dee")

b1 = Booking.new(title: "Clown Party", description: "Bubbles and clowns all day", user_id: 4, entertainer_id: 1)
b2 = Booking.new(title: "Stripper Party", description: "Bubbles and strippers all day", user_id: 2, entertainer_id: 3)
