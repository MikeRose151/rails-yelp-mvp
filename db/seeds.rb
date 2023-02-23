# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
juicy_dumplings = { name: 'Juicy Dumplings', address: '47 Main St, London E3 7JD', phone_number: '0208 312 8390', category: 'chinese' }
pizza_east = { name: 'Pizza East', address: '56A Shoreditch High St East, London E1 6PQ', phone_number: '0208 413 5940', category: 'italian' }
sushi_west = { name: 'Pizza West', address: '56A Shoreditch High St West, London W1 6QP', phone_number: '0208 190 1839', category: 'japanese' }
burger_place = { name: 'Burger Place', address: '15 Burger Street, London N1 8FJ', phone_number: '0208 491 1392', category: 'belgian' }
pastry_land = { name: 'Pasta Land', address: '71 Pasta Land, London N10 4WI', phone_number: '0208 390 1902', category: 'french' }

[juicy_dumplings, pizza_east, sushi_west, burger_place, pastry_land].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
