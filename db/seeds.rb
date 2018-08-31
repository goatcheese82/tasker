# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Users
User.create(first_name: "Bob", last_name: "Bob", email: "bob@bob.com", address: "Bob's House", phone_number: 777, admin: true, password: "hello")

#Events
Event.create(title: "New Event", summary: "A new event", owner_id: 1, date: "2018-08-17 15:30:00")

#Groups

Group.create(title: "Priests", description: "16-18")
Group.create(title: "Teachers", description: "14-15")
