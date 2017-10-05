# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Design.destroy_all
Component.destroy_all


user = User.create(first_name: "Alvaro",last_name: "Urbina", address: "riquelme 340", phone: "124343534", email: "aurbina@gmail.com", password: "123456", password_confirmation: "123456")
user2 = User.create(first_name: "Matias",last_name: "Seguel", address: "villa sana", phone: "+569223232", email: "mati@gmail.com", password: "123456", password_confirmation: "123456")

user3 = User.create(first_name: "Diego",last_name: "Urbina", address: "riquelme 340", phone: "124343534", email: "durbina@gmail.com", password: "123456", password_confirmation: "123456")

user4 = User.create(first_name: "Andrea",last_name: "Herrera", address: "los barbechos 2420", phone: "787287220", email: "aherrera@gmail.com", password: "123456", password_confirmation: "123456")

user5 = User.create(first_name: "Eugenia",last_name: "Prieto", address: "Riquelme 340, la cisterna", phone: "787287220", email: "eprieto@gmail.com", password: "123456", password_confirmation: "123456")



	design = Design.create(
		
		name: "Wood",
		
	)

		design = Design.create(
		
		name: "Classic",
		
	)
	
		design = Design.create(
		
		name: "Fancy",
		
	)

	design = Design.create(
		
		name: "Cooler",
		
	)
	
	component = Component.create(

		name: "Mueble Arcade",
		description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos, temporibus.",
		price: 150000,
		image: "https://i.pinimg.com/564x/e6/3c/f4/e63cf4e5fb0642aa12a9b647eb403595.jpg"

		)

