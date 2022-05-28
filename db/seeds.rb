puts "Cleaning Database..."
User.destroy_all
Follow.destroy_all
List.destroy_all
Item.destroy_all
FavouriteList.destroy_all
# Tag.destroy_all
# ListTag.destroy_all
puts "Database clean"

# Bio for users
# bio = "This is the bio section of the users profile. You can update this information."

puts "Creating Users..."
user1 = User.create(email: "bom@test.com", password: "pass123")
user2 = User.create(email: "and@test.com", password: "pass123")
user3 = User.create(email: "athe@test.com", password: "pass123")
user4 = User.create(email: "snoop@test.com", password: "pass123")
user5 = User.create(email: "smile@test.com", password: "pass123")
# user1 = User.create(username: "bomtrookes", email: "bom@test.com", password: "pass123", avatar: "#", bio: bio)
# user2 = User.create(username: "andyouare", email: "and@test.com", password: "pass123", avatar: "#", bio: bio)
# user3 = User.create(username: "Athelas85", email: "athe@test.com", password: "pass123", avatar: "#", bio: bio)
# user4 = User.create(username: "snoopy", email: "snoop@test.com", password: "pass123", avatar: "#", bio: bio)
# user5 = User.create(username: "emojiBoy", email: "smile@test.com", password: "pass123", avatar: "#", bio: bio)
puts "User created"

puts "Creating Follows..."
follow1 = Follow.create(follower_id: user5.id, followed_id: 0)
follow2 = Follow.create(follower_id: user4.id, followed_id: 0)
follow3 = Follow.create(follower_id: user1.id, followed_id: follow2.id)
follow4 = Follow.create(follower_id: user2.id, followed_id: follow3.id)
follow5 = Follow.create(follower_id: user3.id, followed_id: follow4.id)
follow1.update(follower_id: user5.id, followed_id: follow5.id)
follow2.update(follower_id: user5.id, followed_id: follow4.id)
puts "Follows created"

puts "Creating Lists..."
list1 = List.create(user_id: user1.id, title: "Best Movies", votes: 234, published: true)
list2 = List.create(user_id: user2.id, title: "Walks in London", votes: 345, published: true)
list3 = List.create(user_id: user3.id, title: "Summer Holiday Destionations", votes: 456, published: true)
list4 = List.create(user_id: user4.id, title: "Ketchup Brands", votes: 353, published: true)
list5 = List.create(user_id: user5.id, title: "Website Designs", votes: 536, published: true)
puts "Lists created"

puts "Creating List Items..."
# list 3 - items
Item.create(name: "Godfather", description: "It's really good, so I made a list about it", link: "#", list_id: list1.id)
Item.create(name: "Amelie", description: "It's really good, so I made a list about it", link: "#", list_id: list1.id )
Item.create(name: "Her", description: "It's really good, so I made a list about it", link: "#", list_id: list1.id )
# list 2 - items
Item.create(name: "Hampstead Heath", description: "It's really good, so I made a list about it", link: "#", list_id: list2.id)
Item.create(name: "Regents Park", description: "It's really good, so I made a list about it", link: "#", list_id: list2.id)
Item.create(name: "Clissold Park", description: "It's really good, so I made a list about it", link: "#", list_id: list2.id)
# list 3 - items
Item.create(name: "Spain", description: "It's really good, so I made a list about it", link: "#", list_id: list3.id)
Item.create(name: "Greece", description: "It's really good, so I made a list about it", link: "#", list_id: list3.id)
Item.create(name: "France", description: "It's really good, so I made a list about it", link: "#", list_id: list3.id)
# list 4 - items
Item.create(name: "Heinz", description: "It's really good, so I made a list about it", link: "#", list_id: list4.id)
Item.create(name: "Daddy's", description: "It's really good, so I made a list about it", link: "#", list_id: list4.id)
Item.create(name: "Sauce Shop", description: "It's really good, so I made a list about it", link: "#", list_id: list4.id)
# list 5 - items
Item.create(name: "Google", description: "It's really good, so I made a list about it", link: "#", list_id: list5.id)
Item.create(name: "Apple", description: "It's really good, so I made a list about it", link: "#", list_id: list5.id)
Item.create(name: "Awwwards", description: "It's really good, so I made a list about it", link: "#", list_id: list5.id)
puts "List Items created"

puts "Creating Favourite Lists..."
FavouriteList.create(user_id: user1.id, list_id: list5.id)
FavouriteList.create(user_id: user2.id, list_id: list4.id)
FavouriteList.create(user_id: user3.id, list_id: list3.id)
FavouriteList.create(user_id: user4.id, list_id: list1.id)
FavouriteList.create(user_id: user5.id, list_id: list2.id)
puts "Favourite Lists created"

# puts "Creating Tags..."

# puts "Creating List Tags..."
