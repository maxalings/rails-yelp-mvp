# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Restaurant.destroy_all

restaurants = [
  { name: 'The Great Wall', address: '123 Beijing St, Beijing', category: 'chinese' },
  { name: 'La Trattoria', address: '456 Rome Ave, Rome', category: 'italian' },
  { name: 'Sushi Zen', address: '789 Tokyo Rd, Tokyo', category: 'japanese' },
  { name: 'Le Petit Paris', address: '101 Paris Blvd, Paris', category: 'french' },
  { name: 'Chez Léon', address: '202 Brussels Square, Brussels', category: 'belgian' }
]

restaurants.each do |restaurant|
  Restaurant.create!(restaurant)
end

puts "Seeded #{restaurants.length} restaurants."
