# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "cleaning DB.."
Restaurant.destroy_all

puts "inserting restaurants"

5.times do
  new_restaurant = Restaurant.create(name: Faker::FunnyName.two_word_name, address: Faker::Address.street_address, phone_number: Faker::PhoneNumber.cell_phone, category: ["chinese", "italian", "japanese", "french", "belgian"].sample)

  puts new_restaurant.id
  # puts "#{new_restaurant.id} was sucessfully created!" if new_restaurant.save!
end

puts "done."
