# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Fridge.destroy_all

kitchen = Fridge.create(location: "Kitchen", brand: "GE", size: 21)
garage = Fridge.create(location: "Garage", brand: "Kenmore", size: 21.8)
game_room = Fridge.create(location: "Game Room", brand: "Alienware", size: 37)
office = Fridge.create(location: "Office", brand: "Danby", size: 3.3)


apple = kitchen.foods.create(name: "Apple", weight: 1, vegan: true)
milk = kitchen.foods.create(name: "Milk", weight: 2, vegan: true)
orange = kitchen.foods.create(name: "Orange", weight: 1, vegan: true)