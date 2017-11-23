# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

movies = Movie.create([{ title: 'Star Wars', summary: "Blablabla", year: 1982 }, { title: 'Lord of the Rings', summary: "Blablabis", year: 1999 }])

movies.first.actors << Actor.create(name: "Harisson Ford", bio: "ou pas")