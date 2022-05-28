puts "Cleaning Database..."
User.destroy_all
Follows.destroy_all
List.destroy_all
Item.destroy_all
FavouriteList.destroy_all
# Tag.destroy_all
# ListTag.destroy_all
puts "Database clean"

puts "Creating Users..."
User.create(username: "bomtrookes", email: "bom@test.com", password: "pass123", avatar: "#", bio: "Some information about me")
User.create(username: "andyouare", email: "and@test.com", password: "pass123", avatar: "#", bio: "Some information about me")
User.create(username: "Athelas85", email: "athe@test.com", password: "pass123", avatar: "#", bio: "Some information about me")
User.create(username: "snoopy", email: "snoop@test.com", password: "pass123", avatar: "#", bio: "Some information about me")
User.create(username: "emojiBoy", email: "smile@test.com", password: "pass123", avatar: "#", bio: "Some information about me")

puts "Creating Following..."
Following.create(follower_id: 1, followed_id: 4)
Following.create(follower_id: 2, followed_id: 5)
Following.create(follower_id: 3, followed_id: 1)
Following.create(follower_id: 4, followed_id: 2)
Following.create(follower_id: 5, followed_id: 3)

puts "Creating Lists..."
List.create(used_id: 1, title: "Best Movies", votes: 234, published: true)
List.create(used_id: 2, title: "Walks in London", votes: 345, published: true)
List.create(used_id: 3, title: "Summer Holiday Destionations", votes: 456, published: true)
List.create(used_id: 4, title: "Ketchup Brands", votes: 353, published: true)
List.create(used_id: 5, title: "Website Designs", votes: 536, published: true)

puts "Creating List Items..."
Item.create(name: "Godfather", description: "It's really good, so I made a list about it", link: "#", list_id: 1)
Item.create(name: "Amelie", description: "It's really good, so I made a list about it", link: "#", list_id: 1)
Item.create(name: Her, description: "It's really good, so I made a list about it", link: "#", list_id: 1)

Item.create(name: "Hampstead Heath", description: "It's really good, so I made a list about it", link: "#", list_id: 2)
Item.create(name: "Regents Park", description: "It's really good, so I made a list about it", link: "#", list_id: 2)
Item.create(name: "Clissold Park", description: "It's really good, so I made a list about it", link: "#", list_id: 2)

Item.create(name: "Spain", description: "It's really good, so I made a list about it", link: "#", list_id: 3)
Item.create(name: "Greece", description: "It's really good, so I made a list about it", link: "#", list_id: 3)
Item.create(name: "France", description: "It's really good, so I made a list about it", link: "#", list_id: 3)

Item.create(name: "Heinz", description: "It's really good, so I made a list about it", link: "#", list_id: 4)
Item.create(name: "Daddy's", description: "It's really good, so I made a list about it", link: "#", list_id: 4)
Item.create(name: "Sauce Shop", description: "It's really good, so I made a list about it", link: "#", list_id: 4)

Item.create(name: "Google", description: "It's really good, so I made a list about it", link: "#", list_id: 5)
Item.create(name: "Apple", description: "It's really good, so I made a list about it", link: "#", list_id: 5)
Item.create(name: "Awwwards", description: "It's really good, so I made a list about it", link: "#", list_id: 5)

puts "Creating Favourite Lists..."
FavouriteList.create(used_id: 1, list_id: 5)
FavouriteList.create(used_id: 2, list_id: 4)
FavouriteList.create(used_id: 3, list_id: 3)
FavouriteList.create(used_id: 4, list_id: 1)
FavouriteList.create(used_id: 5, list_id: 2)

# puts "Creating Tags..."

# puts "Creating List Tags..."
