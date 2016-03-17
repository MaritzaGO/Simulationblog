# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(email: "moderator@gmail.com", name: "moderador", username: "moderador", description: "Moderador del blog", password: "123456789", role: "moderator" )
User.create(email: "admin@gmail.com", name: "administrador", username: "administrador", description: "Administrador del blog", password: "123456789", role: "admin" )