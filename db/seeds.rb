# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Users
#User.create(first_name: "Ben", last_name: "Smith", email: "nonsquishy@gmail.com", address: "1928 Patrician Way", phone_number: "702-325-0055", admin: true, password: "hello")
User.create(first_name: "Shawn", last_name: "Bishop", email: "shawnbishop0908@gmail.com", address: "1622 Campbell Dr W", phone_number: "850-496-4609", admin: false, password: "hello")
User.create(first_name: "Jacob", last_name: "Hanson", email: "jalynnhanson@gmail.com", address: "11 Elkwood Ct", phone_number: "505-573-5441", admin: false, password: "hello")
User.create(first_name: "Sam", last_name: "Miskin", email: "jrmiskin@live.com", address: "2834 Aspen Dr", phone_number: "701-240-9086", admin: false, password: "hello")
User.create(first_name: "Parker", last_name: "Moeller", email: "anthonykristie@gmail.com", address: "10 Windemere Court NW", phone_number: "716-570-6694", admin: false, password: "hello")
User.create(first_name: "Ethan", last_name: "Orse", email: "wm.orse@yahoo.com", address: "653 Fairway Ave", phone_number: "850-582-0013", admin: false, password: "hello")
User.create(first_name: "Ethan", last_name: "Alvarez", email: "alvarezboys1343@gmail.com", address: "400 Rhonda Kay Ct # 4", phone_number: "623-826-0311", admin: false, password: "hello")

#Events
#Event.create(title: "First Event", summary: "A new event", owner_id: 1, date: "2018-08-17 15:30:00")

#Groups

Group.create(title: "Priests", description: "16-18")
Group.create(title: "Teachers", description: "14-15")
Group.create(title: "Deacons", description: "12-13")
