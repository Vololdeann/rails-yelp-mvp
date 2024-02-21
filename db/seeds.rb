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

pizza_tony = {name: "Pizza Tony", address: "3 rue de l'Italie", phone_number: "0542372878", category: "italien"}
thai_miam = {name: "Thai Miam", address: "5 avenue de Bangkok", phone_number: "1233457", category: "thai"}
sushi_top = {name: "Sushi Top", address: "4 place de Tokyo", phone_number: "234748854", category: "japanese"}

[pizza_tony, thai_miam, sushi_top].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
