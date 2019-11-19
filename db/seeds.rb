# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Meuble.destroy_all
meubles = Meuble.create! ([{
  name: "Baignoire",
  category: "Bathroom",
  description: "elle prend l'eau",
  height: 10,
  width: 10,
  length: 10,
  daily_rate: 10
 },
 {
  name: "toilette",
  category: "Bathroom",
  description: "elle fuit",
  height: 10,
  width: 10,
  length: 10,
  daily_rate: 5
}])
