# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning Database..."
User.destroy_all
Following.destroy_all
List.destroy_all
Item.destroy_all
FavouriteList.destroy_all
Tag.destroy_all
ListTag.destroy_all
puts "Database clean"

puts "Creating Users..."
user1 = User.create()
puts "Creating Following..."

puts "Creating Lists..."

puts "Creating List Items..."

puts "Creating Favourite Lists..."

puts "Creating Tags..."

puts "Creating List Tags..."
