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


tacos = kitchen.foods.create(name: "Trader Joe's Mini Tacos", weight: 5, vegan: false)
oj = kitchen.foods.create(name: "Orange Juice", weight: 2, vegan: true)
milk = kitchen.foods.create(name: "Milk", weight: 2, vegan: false)

pbr = garage.foods.create(name: "Pabst Blue Ribbon", weight: 1, vegan: true)
soda = garage.foods.create(name: "Pepsi", weight: 1, vegan: true)
bbq = garage.foods.create(name: "Bone Suckin' Sauce", weight: 1, vegan: false)

dew = game_room.foods.create(name: "Mountain Dew", weight: 1, vegan: true)
bull = game_room.foods.create(name: "Red Bull", weight: 0.5, vegan: true)
water = game_room.foods.create(name: "Water", weight: 1, vegan: true)

apple = office.foods.create(name: "Apple", weight: 1, vegan: true)
milk = office.foods.create(name: "Milk", weight: 2, vegan: true)
orange = office.foods.create(name: "Orange", weight: 1, vegan: true)