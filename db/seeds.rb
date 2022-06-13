require 'faker'

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
user1 = User.create(username: "bomtrookes", email: "bom@test.com", password: "pass123", avatar: Faker::Avatar.image, bio: Faker::GreekPhilosophers.quote, admin: true)
user2 = User.create(username: "nuria", email: "nuria@test.com", password: "pass123", avatar: Faker::Avatar.image, bio:  Faker::GreekPhilosophers.quote, admin: true)
user3 = User.create(username: "Athelas85", email: "athe@test.com", password: "pass123", avatar: Faker::Avatar.image, bio:  Faker::GreekPhilosophers.quote, admin: true)
user4 = User.create(username: "snoop", email: "snoop@test.com", password: "pass123", avatar: Faker::Avatar.image, bio: Faker::GreekPhilosophers.quote)
user5 = User.create(username: "smile", email: "smile@test.com", password: "pass123", avatar: Faker::Avatar.image, bio: Faker::GreekPhilosophers.quote)

puts "Creating Follows..."

Follow.create(follower_id: user1.id, followed_id: user2.id)
Follow.create(follower_id: user1.id, followed_id: user3.id)

Follow.create(follower_id: user2.id, followed_id: user1.id)
Follow.create(follower_id: user2.id, followed_id: user3.id)

Follow.create(follower_id: user3.id, followed_id: user1.id)
Follow.create(follower_id: user3.id, followed_id: user2.id)

i = 0

rand(5..10).times do

  user_a = User.create!(
    {
      email: Faker::Internet.email,
      password: "pass123",
      bio: Faker::GreekPhilosophers.quote,
      username: "#{Faker::Name.first_name}#{i}",
      avatar: Faker::Avatar.image
    }
  )

  user_b = User.create!(
    {
      email: Faker::Internet.email,
      password: "pass123",
      bio: Faker::GreekPhilosophers.quote,
      username: "#{Faker::Name.first_name}#{i}",
      avatar: Faker::Avatar.image
    }
  )

  user_c = User.create!(
    {
      email: Faker::Internet.email,
      password: "pass123",
      bio: Faker::GreekPhilosophers.quote,
      username: "#{Faker::Name.first_name}#{i}",
      avatar: Faker::Avatar.image
    }
  )

  Follow.create(follower_id: user_a.id, followed_id: user_b.id)
  Follow.create(follower_id: user_b.id, followed_id: user_a.id)
  Follow.create(follower_id: user_c.id, followed_id: user_b.id)

  Follow.create(follower_id: user_a.id, followed_id: user1.id)
  Follow.create(follower_id: user_b.id, followed_id: user2.id)
  Follow.create(follower_id: user_c.id, followed_id: user3.id)

  i += 3

end

rand(5..10).times do

  user_a = User.create!(
    {
      email: Faker::Internet.email,
      password: "pass123",
      bio: Faker::GreekPhilosophers.quote,
      username: "#{Faker::Name.first_name}#{i}",
      avatar: Faker::Avatar.image
    }
  )

  user_b = User.create!(
    {
      email: Faker::Internet.email,
      password: "pass123",
      bio: Faker::GreekPhilosophers.quote,
      username: "#{Faker::Name.first_name}#{i}",
      avatar: Faker::Avatar.image
    }
  )

  user_c = User.create!(
    {
      email: Faker::Internet.email,
      password: "pass123",
      bio: Faker::GreekPhilosophers.quote,
      username: "#{Faker::Name.first_name}#{i}",
      avatar: Faker::Avatar.image
    }
  )

  Follow.create(follower_id: user_a.id, followed_id: user_b.id)
  Follow.create(follower_id: user_b.id, followed_id: user_a.id)
  Follow.create(follower_id: user_c.id, followed_id: user_b.id)

  i += 2

end

puts "Follows created"

puts "Creating Lists..."

10.times do

user = User.all.sample

  list = List.create!(
    {
      user_id: user.id,
      title: "Top 10 Superhero powers",
      published: true
    }
  )

  10.times do
    Item.create!(
      {
        name: Faker::Superhero.power,
        list_id: list.id
      }
    )
  end

end

10.times do

  user = User.all.sample

    list = List.create!(
      {
        user_id: user.id,
        title: "Best tea varieties",
        published: true
      }
    )

    10.times do
      Item.create!(
        {
          name: Faker::Tea.variety,
          list_id: list.id
        }
      )
    end
end

10.times do

  user = User.all.sample

    list = List.create!(
      {
        user_id: user.id,
        title: "Top rated Universities",
        published: true
      }
    )

    10.times do
      Item.create!(
        {
          name: Faker::University.name,
          list_id: list.id
        }
      )
    end
end

3.times do

  user = User.all.sample

    list = List.create!(
      {
        user_id: user.id,
        title: "Highest mountaines climbed",
        published: true
      }
    )

    10.times do
      Item.create!(
        {
          name: Faker::Mountain.name,
          list_id: list.id
        }
      )
    end
end

10.times do

  user = User.all.sample

    list = List.create!(
      {
        user_id: user.id,
        title: "Fav Harry Potter Characters",
        published: true
      }
    )

    10.times do
      Item.create!(
        {
          name: Faker::Movies::HarryPotter.character,
          list_id: list.id
        }
      )
    end
end


list1 = List.create(user_id: user1.id, title: "Best Movies", published: true)
list2 = List.create(user_id: user2.id, title: "Walks in London", published: true)
list3 = List.create(user_id: user3.id, title: "Summer Holiday Destionations", published: true)
list4 = List.create(user_id: user4.id, title: "Ketchup Brands", published: true)
list5 = List.create(user_id: user5.id, title: "Website Designs", published: true)
list6 = List.create(user_id: user2.id, title: "Top 10 Jamie Oliver Recipes", published: false)
list7 = List.create(user_id: user2.id, title: "Fav colors", published: false)
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
# list 6 - items
Item.create(name: "Silky squash risotto", list_id: list6.id)
Item.create(name: "Beautiful courgette carbonara", list_id: list6.id)
Item.create(name: "Greens mac 'n' cheese", list_id: list6.id)
Item.create(name: "Roasted veggie curry", list_id: list6.id)
Item.create(name: "Claudia Winkleman's butter chicken", list_id: list6.id)
Item.create(name: "Love heart Camembert", list_id: list6.id)
# list 7 - items
Item.create(name: "red", list_id: list7.id)
Item.create(name: "orange", list_id: list7.id)
Item.create(name: "black", list_id: list7.id)
Item.create(name: "green", list_id: list7.id)
Item.create(name: "surf green", list_id: list7.id)
Item.create(name: "garnet", list_id: list7.id)

puts "List Items created"

puts "Creating Favourite Lists..."
FavouriteList.create(user_id: user1.id, list_id: list5.id)
FavouriteList.create(user_id: user2.id, list_id: list4.id)
FavouriteList.create(user_id: user3.id, list_id: list3.id)
FavouriteList.create(user_id: user4.id, list_id: list1.id)
FavouriteList.create(user_id: user5.id, list_id: list2.id)
puts "Favourite Lists created"

puts "Creating votes..."

lists = List.all

lists.each do |list|
  rand(50-100).times do
    list.votes.create
  end
end

puts "Votes created!"

# puts "Creating Tags..."

# puts "Creating List Tags..."
