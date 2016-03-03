# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(email:"linkherox@gmail.com", password: "password", location_id: 1)


Location.create(place_name: "Home", latitude: 33.56, longitude: -84.5, user_id: 1)

Location.create(place_name: "Strongbox West", latitude: 33.78457, longitude: -84.42126)
