# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Book.destroy_all
Genre.destroy_all
Author.destroy_all

1000.times do
  a = Author.create name: Faker::Book.author
  g = Genre.create name: Faker::Book.genre
  Book.create title: Faker::Book.title, author: a, genre: g
end
