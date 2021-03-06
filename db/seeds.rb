# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Start of seed"

puts "Clean DB"

Ingredient.destroy_all
Cocktail.destroy_all

puts "Creating 3 different Ingredients"


Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "mint")
Ingredient.create(name: "tequila")

puts "Creating 1  cocktail"

Cocktail.create(name: "margarita")

puts "Done"