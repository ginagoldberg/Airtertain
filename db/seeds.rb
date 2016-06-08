# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all

Booking.destroy_all

u1 = User.create(first_name: "Joe", last_name:"Doe", email: "11@11.com", password: "111111", entertainer_name: "JDD")
u2 = User.create(first_name: "Jee", last_name:"Dee", email: "21@21.com", password: "222111", entertainer_name: "JDee")
u3 = User.create(first_name: "Bee", last_name:"Dee", email: "31@31.com", password: "333111",  entertainer_name: "BDee")
u4 = User.create(first_name: "Cee", last_name:"Dee", email: "41@41.com", password: "444111", )


b1 = Booking.create(title: "Clown Party", description: "Bubbles and clowns all day", user_id: User.all.sample.id, entertainer_id: User.all.sample.id)
b2 = Booking.create(title: "Stripper Party", description: "Bubbles and strippers all day", user_id: User.all.sample.id, entertainer_id: User.all.sample.id)
