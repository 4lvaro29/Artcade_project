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
Brand.destroy_all

# Reset postgres auto increments
User.connection.execute('ALTER SEQUENCE users_id_seq RESTART WITH 1')
Design.connection.execute('ALTER SEQUENCE designs_id_seq RESTART WITH 1')
Brand.connection.execute('ALTER SEQUENCE brands_id_seq RESTART WITH 1')
Component.connection.execute('ALTER SEQUENCE components_id_seq RESTART WITH 1')

User.create(first_name: "Alvaro",last_name: "Urbina", address: "riquelme 340", phone: "124343534", email: "aurbina@gmail.com", password: "123456", password_confirmation: "123456")
User.create(first_name: "Matias",last_name: "Seguel", address: "villa sana", phone: "+569223232", email: "mati@gmail.com", password: "123456", password_confirmation: "123456")

User.create(first_name: "Diego",last_name: "Urbina", address: "riquelme 340", phone: "124343534", email: "durbina@gmail.com", password: "123456", password_confirmation: "123456")

User.create(first_name: "Andrea",last_name: "Herrera", address: "los barbechos 2420", phone: "787287220", email: "aherrera@gmail.com", password: "123456", password_confirmation: "123456")

User.create(first_name: "Eugenia",last_name: "Prieto", address: "Riquelme 340, la cisterna", phone: "787287220", email: "eprieto@gmail.com", password: "123456", password_confirmation: "123456")


designs = %w(Wood Classic Fancy Cooler StreetFighter)
designs.each do |design|
	Design.create(name: design)
end

brand_1 = Brand.create(name: 'Samsung')
brand_2 = Brand.create(name: 'AOC')
brand_3 = Brand.create(name: 'Calle')


#Components
	
Component.create(name:"Mueble Arcade", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos, temporibus.", price: 150000, image: "https://i.pinimg.com/564x/e6/3c/f4/e63cf4e5fb0642aa12a9b647eb403595.jpg")

Component.create(name: "Raspberry pi 3", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos, temporibus.", price: 32000, image: "https://http2.mlstatic.com/raspberry-pi-3-nuevo-D_NQ_NP_849929-MLC25980850119_092017-F.webp")

Component.create(name: "Set de Botones rojos", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos, temporibus.", price: 5000, image: "https://i.pinimg.com/564x/e6/3c/f4/e63cf4e5fb0642aa12a9b647eb403595.jpg", brand: brand_2)

Component.create(name: "Set de Botones azules", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos, temporibus.", price: 5000, image: "https://www.preciosdesaldo.com/7077-tm_thickbox_default/boton-azul-arcade-americano-concavo-28mm-con-micro-faston-48.jpg", brand: brand_2)

Component.create(name: "Set de Botones verdes", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos, temporibus.", price: 5000, image: "http://cdn-tienda.bricogeek.com/2764-thickbox_default/pulsador-arcade-con-interruptor-verde.jpg")

Component.create(name: "Set de Botones amarillos", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos, temporibus.", price: 5000, image: "https://www.preciosdesaldo.com/7075-tm_thickbox_default/boton-amarillo-arcade-americano-concavo-28mm-con-micro-faston-48.jpg", brand: brand_2)

Component.create(name: "Set de palancas rojas redondas", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos, temporibus.", price: 8500, image: "https://ae01.alicdn.com/kf/HTB17aycRVXXXXX3XVXXq6xXFXXXQ/-font-b-Joystick-b-font-font-b-Arcade-b-font-de-la-palanca-de-BRICOLAJE.jpg", brand: brand_2)


Component.create(name: "Set de palancas rojas de lágrima", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos, temporibus.", price: 8500, image: "https://miarcade.com/wp-content/uploads/2016/10/joystick-arcade-Mag-Stick-plus-.jpg", brand: brand_2)

Component.create(name: "Set de palancas rojas competición", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos, temporibus.", price: 4500, image: "https://http2.mlstatic.com/palanca-arcade-happ-competition-1-un-envio-gratis-D_NQ_NP_539625-MLC25464376514_032017-F.jpg", brand: brand_2)

Component.create(name: "Set de palancas negras redondas", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos, temporibus.", price: 8500, image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQb_xBvmFNC_td7t2LgfkijQlGgoGyiZ5Y1L39YWBflZtPtiX6o")

Component.create(name: "Set de palancas negras de lágrima", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos, temporibus.", price: 8500,
		image: "http://4.bp.blogspot.com/-S1hFq1NdDSM/UA0hTm4pGdI/AAAAAAAAAEo/BkSNsHYPlfc/s1600/sticks.gif")

Component.create(name: "Set de palancas negras competición", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos, temporibus.", price: 4500, image: "https://ae01.alicdn.com/kf/HTB1g.pYMXXXXXa.XVXXq6xXFXXXq/Black-HAPP-style-font-b-Competition-b-font-Style-4-way-8-way-font-b-Joystick.jpg")

Component.create(name: "Botones player 1 y player 2", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos, temporibus.", price: 4500, image: "http://bartop.es/81-thickbox_default/vinilo-personalizado.jpg")	

Component.create(name: "Microswitch", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos, temporibus.", price: 4500, image: "https://www.circuitspecialists.com/content/118837/66-4000-0.jpg")

Component.create(name: "Tarjeta de memoria sd 32 gb", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos, temporibus.", price: 4500, image: "http://todocamaras.cl//img/cms/sandisk%20ultra%2032gb/tarjeta_micro_sd_32_gb_ultra_3_ad_l.jpg")

Component.create(name: "Tarjeta de memoria sd 64 gb", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos, temporibus.", price: 15000, image: "https://ae01.alicdn.com/kf/HTB1g.pYMXXXXXa.XVXXq6xXFXXXq/Black-HAPP-style-font-b-Competition-b-font-Style-4-way-8-way-font-b-Joystick.jpg")

Component.create(name: "Tarjeta de memoria sd 128 gb", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos, temporibus.", price: 45000, image: "https://images-na.ssl-images-amazon.com/images/I/51DVLEq9x3L._SY355_.jpg")

Component.create(name: "Demora cero Arcade Encoder USB PC Joystick de Arcade Rockero Place de
		circuito Del Panel de Control MAME 2pin + Botones DIY", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos, temporibus.",
		price: 4500, image: "https://ae01.alicdn.com/kf/HTB1lqQAPVXXXXaBXFXXq6xXFXXXR/2-Jugadores-de-BRICOLAJE-de-Demora-Cero-Arcade-Encoder-USB-PC-piezas-de-Repuesto-Joystick-Cable.jpg_640x640.jpg")

Component.create(name: "Fichero", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos, temporibus.",price: 14500, image: "http://static.mercadoshops.com/fichero-monedero-maquina-videoriel-pikachu-arcade_iZ6XvZxXpZ1XfZ83491291-20034873-1.jpgXsZ83491291xIM.jpg")

Component.create(name: "Frigobar", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos, temporibus.",price: 45500, image: "http://medios.plazavip.com/fotos/productos_sears1/original/2574168.jpg")

Component.create(name: "Monitor 20 pulgadas",description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dignissimos, temporibus.", price: 50000, image: "http://medios.plazavip.com/fotos/productos_sears1/original/2574168.jpg", brand: brand_3)
