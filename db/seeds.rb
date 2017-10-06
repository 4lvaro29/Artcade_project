# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Arcade.destroy_all
Component.destroy_all


user = User.create(first_name: "alvaro",last_name: "urbina", address: "riquelme 340", phone: "124343534", email: "aurbina@gmail.com", password: "123456", password_confirmation: "123456")

10.times do

	arcade = Arcade.create(
		
		name: "Super Mario arcade",
		price: 220000,
		image: "http://lorempixel.com/400/200/" 
)
	component = Component.create(

		name: "Raspberry Pi 3",
		price: 34000,
		image: "http://lorempixel.com/400/200/"

		)

	end

