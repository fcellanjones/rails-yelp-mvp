# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "chinese" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian"}
ping_pong =  { name: "Ping Pong", address: "Southbank Centre, London, SE1 8XX", category: "chinese"}
le_petit_chat =  { name: "Le Petit Chat", address: "1 High Holborn, London, W1 5TE ", category: "french"}
doumo =  { name: "Doumo", address: "73 Tower Bridge Rd, London, SE1 4TW", category: "italian"}

[ dishoom, pizza_east, ping_pong, le_petit_chat, doumo ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
