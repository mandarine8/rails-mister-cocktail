# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cocktail.destroy_all
Ingredient.destroy_all

Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "coke")
Ingredient.create(name: "rhum")

mojito = Cocktail.create(name: "mojito")
cubalibre = Cocktail.create(name: "cubalibre")

dose = Dose.new(description: '6ml')
dose.cocktail = mojito
dose.ingredient = Ingredient.first
dose.save
