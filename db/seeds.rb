require 'faker'

puts "Cleaning Database..."

User.destroy_all
Follow.destroy_all
List.destroy_all
Item.destroy_all
FavouriteList.destroy_all
Vote.destroy_all
# Tag.destroy_all
# ListTag.destroy_all

puts "Database clean"

# Bio for users
# bio = "This is the bio section of the users profile. You can update this information."

puts "Creating Users and followers..."

tom = User.create(username: "bomtrookes", email: "bom@test.com", password: "pass123", avatar: Faker::Avatar.image, bio: Faker::GreekPhilosophers.quote, admin: true)
nuria = User.create(username: "nuria", email: "nuria@test.com", password: "pass123", avatar: Faker::Avatar.image, bio:  Faker::GreekPhilosophers.quote, admin: true)
ana = User.create(username: "Athelas85", email: "athe@test.com", password: "pass123", avatar: Faker::Avatar.image, bio:  Faker::GreekPhilosophers.quote, admin: true)

Follow.create(follower_id: tom.id, followed_id: nuria.id)
Follow.create(follower_id: tom.id, followed_id: ana.id)

Follow.create(follower_id: nuria.id, followed_id: tom.id)
Follow.create(follower_id: nuria.id, followed_id: ana.id)

Follow.create(follower_id: ana.id, followed_id: tom.id)
Follow.create(follower_id: ana.id, followed_id: nuria.id)

i = 0

# tom's followers

rand(10..25).times do

  user_a = User.create!(
    {
      email: Faker::Internet.email,
      password: "pass123",
      bio: Faker::GreekPhilosophers.quote,
      username: "#{Faker::Name.first_name}_#{i}",
      avatar: Faker::Avatar.image
    }
  )

  user_b = User.create!(
    {
      email: Faker::Internet.email,
      password: "pass123",
      bio: Faker::GreekPhilosophers.quote,
      username: "#{i}_#{Faker::Internet.username}",
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

  Follow.create(follower_id: tom.id, followed_id: user_a.id)

  Follow.create(follower_id: user_a.id, followed_id: tom.id)
  Follow.create(follower_id: user_b.id, followed_id: tom.id)
  Follow.create(follower_id: user_c.id, followed_id: tom.id)


  i += 3

end

# nuria's followers

rand(15..23).times do

  user_a = User.create!(
    {
      email: Faker::Internet.email,
      password: "pass123",
      bio: Faker::GreekPhilosophers.quote,
      username: "#{Faker::Name.first_name}_#{i}",
      avatar: Faker::Avatar.image
    }
  )

  user_b = User.create!(
    {
      email: Faker::Internet.email,
      password: "pass123",
      bio: Faker::GreekPhilosophers.quote,
      username: "#{i}_#{Faker::Internet.username}",
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

  Follow.create(follower_id: tom.id, followed_id: user_a.id)

  Follow.create(follower_id: user_a.id, followed_id: nuria.id)
  Follow.create(follower_id: user_b.id, followed_id: nuria.id)
  Follow.create(follower_id: user_c.id, followed_id: nuria.id)

  i += 2

end

# ana's followers

rand(18..24).times do

  user_a = User.create!(
    {
      email: Faker::Internet.email,
      password: "pass123",
      bio: Faker::GreekPhilosophers.quote,
      username: "#{Faker::Name.first_name}_#{i}",
      avatar: Faker::Avatar.image
    }
  )

  user_b = User.create!(
    {
      email: Faker::Internet.email,
      password: "pass123",
      bio: Faker::GreekPhilosophers.quote,
      username: "#{i}_#{Faker::Internet.username}",
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

  Follow.create(follower_id: tom.id, followed_id: user_a.id)

  Follow.create(follower_id: user_a.id, followed_id: ana.id)
  Follow.create(follower_id: user_b.id, followed_id: ana.id)
  Follow.create(follower_id: user_c.id, followed_id: ana.id)

  i += 5

end

puts "User and followings created!"

puts "Creating Lists..."

# tom
list1 = List.create(user_id: tom.id, title: "Best Movies",  published: true, tag_list: ["cinema", "movies"])
list2 = List.create(user_id: tom.id, title: "Walks in London",  published: true, tag_list: ["steps", "london", "walks"])

# nuria
list3 = List.create(user_id: nuria.id, title: "Summer Holiday Destionations", published: true, tag_list: ["madrid", "spain", "mallorca"])
list4 = List.create(user_id: nuria.id, title: "Ketchup Brands", published: true, tag_list: ["ketchup", "food", "sauces"])

# ana
list5 = List.create(user_id: ana.id, title: "Website Designs", published: true, tag_list: ["design", "website"])
list6 = List.create(user_id: ana.id, title: "Top 10 Jamie Oliver Recipes", published: false, tag_list: ["food", "jamie", "london"])

user = User.all.sample
list = List.create!(
  {
    user_id: user.id,
    title: "Top 10 Superhero powers",
    published: true,
    tag_list: [],
    created_at: Faker::Time.between(from: DateTime.now - 800, to: DateTime.now)
  }
)
8.times do
  Item.create!(
    {
      name: Faker::Superhero.power,
      list_id: list.id
    }
  )
end

user = User.all.sample
list = List.create!(
  {
    user_id: user.id,
    title: "Best tea varieties",
    published: true,
    tag_list: [],
    created_at: Faker::Time.between(from: DateTime.now - 800, to: DateTime.now)
  }
)
7.times do
  Item.create!(
    {
      name: Faker::Tea.variety,
      list_id: list.id
    }
  )
end

user = User.all.sample
list = List.create!(
  {
    user_id: user.id,
    title: "Top rated Universities",
    published: true,
    tag_list: [],
    created_at: Faker::Time.between(from: DateTime.now - 800, to: DateTime.now)
  }
)
9.times do
  Item.create!(
    {
      name: Faker::University.name,
      list_id: list.id
    }
  )
end

user = User.all.sample
list = List.create!(
  {
    user_id: user.id,
    title: "Highest mountaines climbed",
    published: true,
    tag_list: [],
    created_at: Faker::Time.between(from: DateTime.now - 800, to: DateTime.now)
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

user = User.all.sample
list = List.create!(
  {
    user_id: user.id,
    title: "Fav Harry Potter Characters",
    published: true,
    tag_list: [],
    created_at: Faker::Time.between(from: DateTime.now - 800, to: DateTime.now)
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

user = User.all.sample
list = List.create!(
  {
    user_id: user.id,
    title: "Most overrated artists",
    published: true,
    tag_list: [],
    created_at: Faker::Time.between(from: DateTime.now - 800, to: DateTime.now)
  }
)
10.times do
  Item.create!(
    {
      name: Faker::Artist.name,
      list_id: list.id
    }
  )
end

user = User.all.sample
list = List.create!(
  {
    user_id: user.id,
    title: "Best beer brands",
    published: true,
    tag_list: [],
    created_at: Faker::Time.between(from: DateTime.now - 800, to: DateTime.now)
  }
)
10.times do
  Item.create!(
    {
      name: Faker::Beer.brand,
      list_id: list.id
    }
  )
end

user = User.all.sample
list = List.create!(
  {
    user_id: user.id,
    title: "Top beer hops",
    published: true,
    tag_list: [],
    created_at: Faker::Time.between(from: DateTime.now - 800, to: DateTime.now)
  }
)
10.times do
  Item.create!(
    {
      name: Faker::Beer.hop,
      list_id: list.id
    }
  )
end

user = User.all.sample
list = List.create!(
  {
    user_id: user.id,
    title: "Best beer malt for DIY beer",
    published: true,
    tag_list: [],
    created_at: Faker::Time.between(from: DateTime.now - 800, to: DateTime.now)
  }
)
8.times do
  Item.create!(
    {
      name: Faker::Beer.malts,
      list_id: list.id
    }
  )
end

user = User.all.sample
list = List.create!(
  {
    user_id: user.id,
    title: "Bossanova artists",
    published: true,
    tag_list: [],
    created_at: Faker::Time.between(from: DateTime.now - 800, to: DateTime.now)
  }
)
8.times do
  Item.create!(
    {
      name: Faker::BossaNova.artist,
      list_id: list.id
    }
  )
end

user = User.all.sample
list = List.create!(
  {
    user_id: user.id,
    title: "BEst 10 Bossanova songs",
    published: true,
    tag_list: [],
    created_at: Faker::Time.between(from: DateTime.now - 800, to: DateTime.now)
  }
)
10.times do
  Item.create!(
    {
      name: Faker::BossaNova.song,
      list_id: list.id
    }
  )
end

user = User.all.sample
list = List.create!(
  {
    user_id: user.id,
    title: "Top cameras for portrait",
    published: true,
    tag_list: [],
    created_at: Faker::Time.between(from: DateTime.now - 800, to: DateTime.now)
  }
)
10.times do
  Item.create!(
    {
      name: Faker::Camera.brand_with_model,
      list_id: list.id
    }
  )
end

user = User.all.sample
list = List.create!(
  {
    user_id: user.id,
    title: "Best Chuck Norris facts",
    published: true,
    tag_list: [],
    created_at: Faker::Time.between(from: DateTime.now - 800, to: DateTime.now)
  }
)
10.times do
  Item.create!(
    {
      name: Faker::ChuckNorris.fact,
      list_id: list.id
    }
  )
end

user = User.all.sample
list = List.create!(
  {
    user_id: user.id,
    title: "Top health benefits from cannabis",
    published: true,
    tag_list: [],
    created_at: Faker::Time.between(from: DateTime.now - 800, to: DateTime.now)
  }
)
6.times do
  Item.create!(
    {
      name: Faker::Cannabis.health_benefit,
      list_id: list.id
    }
  )
end

user = User.all.sample
list = List.create!(
  {
    user_id: user.id,
    title: "Best coffee origins",
    published: true,
    tag_list: [],
    created_at: Faker::Time.between(from: DateTime.now - 800, to: DateTime.now)
  }
)
10.times do
  Item.create!(
    {
      name: Faker::Coffee.origin,
      list_id: list.id
    }
  )
end

user = User.all.sample
list = List.create!(
  {
    user_id: user.id,
    title: "Top 10 coffe blends",
    published: true,
    tag_list: [],
    created_at: Faker::Time.between(from: DateTime.now - 800, to: DateTime.now)
  }
)
10.times do
  Item.create!(
    {
      name: Faker::Coffee.blend_name,
      list_id: list.id
    }
  )
end

user = User.all.sample
list = List.create!(
  {
    user_id: user.id,
    title: "Fav colors",
    published: true,
    tag_list: [],
    created_at: Faker::Time.between(from: DateTime.now - 800, to: DateTime.now)
  }
)
10.times do
  Item.create!(
    {
      name: Faker::Color.color_name,
      list_id: list.id
    }
  )
end

user = User.all.sample
list = List.create!(
  {
    user_id: user.id,
    title: "Best crypto to invest",
    published: true,
    tag_list: [],
    created_at: Faker::Time.between(from: DateTime.now - 800, to: DateTime.now)
  }
)
10.times do
  Item.create!(
    {
      name: Faker::CryptoCoin.coin_name,
      list_id: list.id
    }
  )
end

user = User.all.sample
list = List.create!(
  {
    user_id: user.id,
    title: "Top 10 cryptos",
    published: true,
    tag_list: [],
    created_at: Faker::Time.between(from: DateTime.now - 800, to: DateTime.now)
  }
)
10.times do
  Item.create!(
    {
      name: Faker::CryptoCoin.coin_name,
      list_id: list.id
    }
  )
end

user = User.all.sample
list = List.create!(
  {
    user_id: user.id,
    title: "My favourite DC heros",
    published: true,
    tag_list: [],
    created_at: Faker::Time.between(from: DateTime.now - 800, to: DateTime.now)
  }
)
10.times do
  Item.create!(
    {
      name: Faker::DcComics.hero,
      list_id: list.id
    }
  )
end

user = User.all.sample
list = List.create!(
  {
    user_id: user.id,
    title: "Top 10 DC characters",
    published: true,
    tag_list: [],
    created_at: Faker::Time.between(from: DateTime.now - 800, to: DateTime.now)
  }
)
10.times do
  Item.create!(
    {
      name: Faker::DcComics.heroine,
      list_id: list.id
    }
  )
end

user = User.all.sample
list = List.create!(
  {
    user_id: user.id,
    title: "Best DC villains ever",
    published: true,
    tag_list: [],
    created_at: Faker::Time.between(from: DateTime.now - 800, to: DateTime.now)
  }
)
8.times do
  Item.create!(
    {
      name: Faker::DcComics.villain,
      list_id: list.id
    }
  )
end

user = User.all.sample
list = List.create!(
  {
    user_id: user.id,
    title: "My fav desserts",
    published: true,
    tag_list: ['food', 'dessert'],
    created_at: Faker::Time.between(from: DateTime.now - 800, to: DateTime.now)
  }
)
10.times do
  Item.create!(
    {
      name: Faker::Dessert.variety,
      list_id: list.id
    }
  )
end

user = User.all.sample
list = List.create!(
  {
    user_id: user.id,
    title: "Yummiest dessert flavors",
    published: true,
    tag_list: ['food', 'dessert'],
    created_at: Faker::Time.between(from: DateTime.now - 800, to: DateTime.now)
  }
)
10.times do
  Item.create!(
    {
      name: Faker::Dessert.flavor,
      list_id: list.id
    }
  )
end

user = User.all.sample
list = List.create!(
  {
    user_id: user.id,
    title: "Best desset toppings",
    published: true,
    tag_list: ['food', 'dessert', 'toppings'],
    created_at: Faker::Time.between(from: DateTime.now - 800, to: DateTime.now)
  }
)
8.times do
  Item.create!(
    {
      name: Faker::Dessert.topping,
      list_id: list.id
    }
  )
end

list = List.create!(
  {
    user_id: tom.id,
    title: "My top 10 food dishes ever",
    published: true,
    tag_list: ['food'],
    created_at: Faker::Time.between(from: DateTime.now - 800, to: DateTime.now)
  }
)
10.times do
  Item.create!(
    {
      name: Faker::Food.dish,
      list_id: list.id
    }
  )
end

list = List.create!(
  {
    user_id: nuria.id,
    title: "My favourite dishes",
    published: true,
    tag_list: ['food'],
    created_at: Faker::Time.between(from: DateTime.now - 800, to: DateTime.now)
  }
)
8.times do
  Item.create!(
    {
      name: Faker::Food.dish,
      list_id: list.id
    }
  )
end

list = List.create!(
  {
    user_id: ana.id,
    title: "Top 10 best dishes",
    published: true,
    tag_list: ['food'],
    created_at: Faker::Time.between(from: DateTime.now - 800, to: DateTime.now)
  }
)
10.times do
  Item.create!(
    {
      name: Faker::Food.dish,
      list_id: list.id
    }
  )
end

list = List.create!(
  {
    user_id: tom.id,
    title: "Fav hobbies",
    published: true,
    tag_list: ['hobbies', 'fun'],
    created_at: Faker::Time.between(from: DateTime.now - 800, to: DateTime.now)
  }
)
10.times do
  Item.create!(
    {
      name: Faker::Hobby.activity,
      list_id: list.id
    }
  )
end

list = List.create!(
  {
    user_id: nuria.id,
    title: "Hobbies I enjoy the most",
    published: true,
    tag_list: ['hobbies'],
    created_at: Faker::Time.between(from: DateTime.now - 800, to: DateTime.now)
  }
)
8.times do
  Item.create!(
    {
      name: Faker::Hobby.activity,
      list_id: list.id
    }
  )
end

list = List.create!(
  {
    user_id: ana.id,
    title: "My top hobbies",
    published: true,
    tag_list: ['hobbies'],
    created_at: Faker::Time.between(from: DateTime.now - 800, to: DateTime.now)
  }
)
8.times do
  Item.create!(
    {
      name: Faker::Hobby.activity,
      list_id: list.id
    }
  )
end

user = User.all.sample
list = List.create!(
  {
    user_id: user.id,
    title: "My top hobbies",
    published: true,
    tag_list: ['hobbies'],
    created_at: Faker::Time.between(from: DateTime.now - 800, to: DateTime.now)
  }
)
10.times do
  Item.create!(
    {
      name: Faker::Hobby.activity,
      list_id: list.id
    }
  )
end

list = List.create!(
  {
    user_id: ana.id,
    title: "Most paid professions - IMO",
    published: true,
    tag_list: ['job', 'profession'],
    created_at: Faker::Time.between(from: DateTime.now - 800, to: DateTime.now)
  }
)
8.times do
  Item.create!(
    {
      name: Faker::Job.title,
      list_id: list.id
    }
  )
end

list = List.create!(
  {
    user_id: ana.id,
    title: "Top 10 skills to have at work",
    published: true,
    tag_list: ['job', 'work'],
    created_at: Faker::Time.between(from: DateTime.now - 800, to: DateTime.now)
  }
)
10.times do
  Item.create!(
    {
      name: Faker::Job.key_skill,
      list_id: list.id
    }
  )
end

list = List.create!(
  {
    user_id: ana.id,
    title: "Most difficult mountains to climb",
    published: true,
    tag_list: ['mountains', 'climb'],
    created_at: Faker::Time.between(from: DateTime.now - 800, to: DateTime.now)
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

puts "List Items created"

puts "Creating Favourite Lists..."
FavouriteList.create(user_id: tom.id, list_id: list5.id)
FavouriteList.create(user_id: nuria.id, list_id: list4.id)
FavouriteList.create(user_id: ana.id, list_id: list3.id)
FavouriteList.create(user_id: tom.id, list_id: list1.id)
FavouriteList.create(user_id: ana.id, list_id: list2.id)
puts "Favourite Lists created"

puts "Creating votes..."

lists = List.all
users = User.all

lists.each do |list|
  rand(5..10).times do
    list.votes.create(user: users.sample)
  end
end

puts "Votes created!"

puts "Creating pins..."

lists = List.all
users = User.all

lists.each do |list|
  rand(7..12).times do
    list.favourite_lists.create(user: users.sample)
  end
end

puts "Pins created!"

# puts "Creating Tags..."

# puts "Creating List Tags..."
