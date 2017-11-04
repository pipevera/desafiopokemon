# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Catch.destroy_all
Pokemon.destroy_all
User.destroy_all

10.times do
  Pokemon.create!(name: Faker::Pokemon.name, description: "Location: #{Faker::Pokemon.location} -- Move: #{Faker::Pokemon.move}")
end

User.create!(name: 'Alvaro', email: 'alvaro@prueba.cl', role: 2, password: 'password')
User.create!(name: 'Matias', email: 'matias@prueba.cl', role: 1, password: 'password')
