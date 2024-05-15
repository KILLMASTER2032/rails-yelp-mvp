# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "987654321", category: "italian"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "863673753", category: "chinese"}
mcdonald = {name: "mcdonald", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "567842685", category: "french"}
burger_king = {name: "burger_king", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "747283748", category: "japanese"}
subway = {name: "subway", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "765348284", category: "belgian"}

[dishoom, pizza_east, mcdonald, burger_king, subway].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
