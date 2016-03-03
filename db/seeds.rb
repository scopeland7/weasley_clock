# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(email:"linkherox@gmail.com", password: "password")


5.times do |i|
	Location.create(place_name: "Location #{i}", latitude: 34.33, longitude: -81.33)
end