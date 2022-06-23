require "open-uri"
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

puts "Creating Users and followers..."

tom = User.create(username: "bomtrookes", email: "tom@test.com", password: "pass123", avatar: Faker::Avatar.image, bio: Faker::GreekPhilosophers.quote, admin: true)
nuria = User.create(username: "nuria", email: "nuria@test.com", password: "pass123", avatar: Faker::Avatar.image, bio:  Faker::GreekPhilosophers.quote, admin: true)
ana = User.create(username: "Athelas85", email: "athe@test.com", password: "pass123", avatar: Faker::Avatar.image, bio:  Faker::GreekPhilosophers.quote, admin: true)

foodie1 = User.create(username: "foodie64", email: "food1@test.com", password: "pass123", avatar: Faker::Avatar.image, bio:  Faker::GreekPhilosophers.quote)
foodie2 = User.create(username: "food_lover", email: "food2@test.com", password: "pass123", avatar: Faker::Avatar.image, bio:  Faker::GreekPhilosophers.quote)
foodie3 = User.create(username: "food_lists", email: "food3@test.com", password: "pass123", avatar: Faker::Avatar.image, bio:  Faker::GreekPhilosophers.quote)

Follow.create(follower_id: tom.id, followed_id: nuria.id)
Follow.create(follower_id: tom.id, followed_id: ana.id)

Follow.create(follower_id: nuria.id, followed_id: tom.id)
Follow.create(follower_id: nuria.id, followed_id: ana.id)

Follow.create(follower_id: ana.id, followed_id: tom.id)
Follow.create(follower_id: ana.id, followed_id: nuria.id)

i = 0

# tom's followers

rand(10..20).times do

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
  Follow.create(follower_id: user_a.id, followed_id: user_c.id)

  Follow.create(follower_id: user_b.id, followed_id: user_a.id)
  Follow.create(follower_id: user_b.id, followed_id: user_c.id)

  Follow.create(follower_id: user_c.id, followed_id: user_a.id)
  Follow.create(follower_id: user_c.id, followed_id: user_b.id)

  Follow.create(follower_id: tom.id, followed_id: user_a.id)

  Follow.create(follower_id: user_a.id, followed_id: tom.id)
  Follow.create(follower_id: user_b.id, followed_id: tom.id)
  Follow.create(follower_id: user_c.id, followed_id: tom.id)

  Follow.create(follower_id: foodie1.id, followed_id: tom.id)
  Follow.create(follower_id: user_b.id, followed_id: foodie2.id)

  i += 3
end

# nuria's followers

rand(5..15).times do

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
  Follow.create(follower_id: user_a.id, followed_id: user_c.id)

  Follow.create(follower_id: user_b.id, followed_id: user_a.id)
  Follow.create(follower_id: user_b.id, followed_id: user_c.id)

  Follow.create(follower_id: user_c.id, followed_id: user_a.id)
  Follow.create(follower_id: user_c.id, followed_id: user_b.id)

  Follow.create(follower_id: nuria.id, followed_id: user_a.id)

  Follow.create(follower_id: user_a.id, followed_id: nuria.id)
  Follow.create(follower_id: user_b.id, followed_id: nuria.id)
  Follow.create(follower_id: user_c.id, followed_id: nuria.id)

  Follow.create(follower_id: foodie2.id, followed_id: tom.id)
  Follow.create(follower_id: user_b.id, followed_id: foodie3.id)

  i += 2

end

# ana's followers

rand(6..13).times do

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
  Follow.create(follower_id: user_a.id, followed_id: user_c.id)

  Follow.create(follower_id: user_b.id, followed_id: user_a.id)
  Follow.create(follower_id: user_b.id, followed_id: user_c.id)

  Follow.create(follower_id: user_c.id, followed_id: user_a.id)
  Follow.create(follower_id: user_c.id, followed_id: user_b.id)

  Follow.create(follower_id: ana.id, followed_id: user_a.id)

  Follow.create(follower_id: user_a.id, followed_id: ana.id)
  Follow.create(follower_id: user_b.id, followed_id: ana.id)
  Follow.create(follower_id: user_c.id, followed_id: ana.id)

  Follow.create(follower_id: foodie3.id, followed_id: tom.id)
  Follow.create(follower_id: user_b.id, followed_id: foodie1.id)

  i += 5

end

puts "User and followings created!"

puts "Creating Lists and items..."

# tom
list1 = List.create(user_id: tom.id, title: "Best Movies",  published: false, tag_list: ["cinema", "movies"], article: false)
list2 = List.create(user_id: tom.id, title: "Walks in London",  published: false, tag_list: ["steps", "london", "walks"], article: false)

# nuria
list3 = List.create(user_id: nuria.id, title: "Summer Holiday Destionations", published: false, tag_list: ["madrid", "spain", "summer"], article: false)
list4 = List.create(user_id: nuria.id, title: "Ketchup Brands", published: false, tag_list: ["ketchup", "food", "sauces"], article: false)

# ana
list5 = List.create(user_id: ana.id, title: "Website Designs", published: false, tag_list: ["design", "website"], article: false)
list6 = List.create(user_id: ana.id, title: "Top 10 Jamie Oliver Recipes", published: false, tag_list: ["food", "jamie", "london"], article: false)

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

user = User.all.sample
list = List.create!(
  {
    user_id: user.id,
    title: "Top 10 Superhero powers",
    published: true,
    article: false,
    tag_list: ['superhero', 'power'],
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1655627176/list-it/superhero-powers_frxazp.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

puts "list #{list.title} done!"

user = User.all.sample
list = List.create!(
  {
    user_id: user.id,
    title: "Best Superhero powers to have",
    published: true,
    article: false,
    tag_list: ['superhero', 'power'],
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1655627645/list-it/Superheroes_w5dyow.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

puts "list #{list.title} done!"

user = User.all.sample
list = List.create!(
  {
    user_id: user.id,
    title: "Best tea varieties",
    published: true,
    article: false,
    tag_list: ['tea', 'england', 'drink'],
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1655627686/list-it/tea_wguth7.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

puts "list #{list.title} done!"

user = User.all.sample
list = List.create!(
  {
    user_id: user.id,
    title: "My favourite teas",
    published: true,
    article: false,
    tag_list:  ['tea', 'drink'],
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1655627733/list-it/national-tea-festival_dkxctx.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

puts "list #{list.title} done!"

user = User.all.sample
list = List.create!(
  {
    user_id: user.id,
    title: "Top rated Universities",
    published: true,
    article: false,
    tag_list: ['univesity', 'study'],
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1655627977/list-it/uni_bpoktj.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

puts "list #{list.title} done!"

user = User.all.sample
list = List.create!(
  {
    user_id: user.id,
    title: "Best Universities for CS",
    published: true,
    article: false,
    tag_list: ['univesity', 'study', 'programming'],
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1655627940/list-it/columbia_zv48mz.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

puts "list #{list.title} done!"

user = User.all.sample
list = List.create!(
  {
    user_id: user.id,
    title: "Top 10 moest expensive unis",
    published: true,
    tag_list: ['univesity'],
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1655627831/list-it/Woman-student-graduate-university-cambridge-money-pound-signs-cash_bybeop.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

puts "list #{list.title} done!"

user = User.all.sample
list = List.create!(
  {
    user_id: user.id,
    title: "Highest mountains climbed",
    published: true,
    article: false,
    tag_list: ['mountain', 'climb'],
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1655628031/list-it/Everest_North_Face_toward_Base_Camp_Tibet_Luca_Galuzzi_2006_v3icdy.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

puts "list #{list.title} done!"

user = User.all.sample
list = List.create!(
  {
    user_id: user.id,
    title: "Best Harry Potter characters",
    published: true,
    article: false,
    tag_list: ['harry potter'],
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1655628104/list-it/211116-harry-potter-al-1232-b41548_u6c6tw.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

puts "list #{list.title} done!"

user = User.all.sample
list = List.create!(
  {
    user_id: user.id,
    title: "My fav Harry Potter characters",
    published: true,
    article: false,
    tag_list: ['harry potter'],
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1655628152/list-it/harry-p_m354qr.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

puts "list #{list.title} done!"

user = User.all.sample
list = List.create!(
  {
    user_id: user.id,
    title: "Top 10 Harry Potter characters",
    published: true,
    article: false,
    tag_list: ['harry potter'],
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1655628237/list-it/harrp_ryrobm.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

puts "list #{list.title} done!"

user = User.all.sample
list = List.create!(
  {
    user_id: user.id,
    title: "Most overrated artists",
    published: true,
    article: false,
    tag_list: ['art', 'artists'],
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1655628296/list-it/Art_qe8bk1.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

puts "list #{list.title} done!"

user = User.all.sample
list = List.create!(
  {
    user_id: user.id,
    title: "10 artists you need to know",
    published: true,
    article: false,
    tag_list: ['art', 'artists'],
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1655628351/list-it/artist_hfxeuy.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

puts "list #{list.title} done!"

user = User.all.sample
list = List.create!(
  {
    user_id: user.id,
    title: "Best beer brands",
    published: true,
    article: false,
    tag_list: ['beer', 'drink'],
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

puts "list #{list.title} done!"

user = User.all.sample
list = List.create!(
  {
    user_id: user.id,
    title: "Top beer brands",
    published: true,
    article: false,
    tag_list: ['beer','drink'],
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

puts "list #{list.title} done!"

user = User.all.sample
list = List.create!(
  {
    user_id: user.id,
    title: "Top beer hops",
    published: true,
    article: false,
    tag_list: ['beer', 'hops', 'drink'],
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

puts "list #{list.title} done!"

user = User.all.sample
list = List.create!(
  {
    user_id: user.id,
    title: "Best beer malt for DIY beer",
    published: true,
    article: false,
    tag_list: ['beer', 'drink'],
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

puts "list #{list.title} done!"

user = User.all.sample
list = List.create!(
  {
    user_id: user.id,
    title: "Bossanova artists",
    published: true,
    article: false,
    tag_list: ['music', 'art'],
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

puts "list #{list.title} done!"

user = User.all.sample
list = List.create!(
  {
    user_id: user.id,
    title: "Best 10 Bossanova songs",
    published: true,
    article: false,
    tag_list: ['music', 'art'],
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

puts "list #{list.title} done!"

user = User.all.sample
list = List.create!(
  {
    user_id: user.id,
    title: "Top cameras for portrait",
    published: true,
    article: false,
    tag_list: ['film', 'camera'],
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

puts "list #{list.title} done!"

user = User.all.sample
list = List.create!(
  {
    user_id: user.id,
    title: "Best Chuck Norris facts",
    published: true,
    article: false,
    tag_list: ['chuck norris'],
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

puts "list #{list.title} done!"

user = User.all.sample
list = List.create!(
  {
    user_id: user.id,
    title: "Top health benefits from cannabis",
    published: true,
    article: false,
    tag_list: ['health', 'cannabis'],
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

puts "list #{list.title} done!"

user = User.all.sample
list = List.create!(
  {
    user_id: user.id,
    title: "Best coffee origins",
    published: true,
    article: false,
    tag_list: ['coffee', 'drink'],
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

puts "list #{list.title} done!"

user = User.all.sample
list = List.create!(
  {
    user_id: user.id,
    title: "Top 10 coffe blends",
    published: true,
    article: false,
    tag_list: ['coffee', 'drink'],
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

puts "list #{list.title} done!"

user = User.all.sample
list = List.create!(
  {
    user_id: user.id,
    title: "Fav colors",
    published: true,
    article: false,
    tag_list: ['colors'],
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

puts "list #{list.title} done!"

user = User.all.sample
list = List.create!(
  {
    user_id: user.id,
    title: "Best crypto to invest",
    published: true,
    article: false,
    tag_list: ['crypto', 'invest', 'get rich'],
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

puts "list #{list.title} done!"

user = User.all.sample
list = List.create!(
  {
    user_id: user.id,
    title: "Top 10 cryptos",
    published: true,
    article: false,
    tag_list: ['crypto'],
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

puts "list #{list.title} done!"

user = User.all.sample
list = List.create!(
  {
    user_id: user.id,
    title: "Cryptos that will crash in 2022",
    published: true,
    article: false,
    tag_list: ['crypto'],
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

puts "list #{list.title} done!"

user = User.all.sample
list = List.create!(
  {
    user_id: user.id,
    title: "My favourite DC heros",
    published: true,
    article: false,
    tag_list: ['superhero', 'comic', 'dc'],
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

puts "list #{list.title} done!"

user = User.all.sample
list = List.create!(
  {
    user_id: user.id,
    title: "Top 10 DC characters",
    published: true,
    article: false,
    tag_list: ['superhero', 'comic', 'dc'],
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

puts "list #{list.title} done!"

user = User.all.sample
list = List.create!(
  {
    user_id: user.id,
    title: "Best DC villains ever",
    published: true,
    article: false,
    tag_list: ['movie', 'comic', 'dc'],
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

puts "list #{list.title} done!"

user = User.all.sample
list = List.create!(
  {
    user_id: user.id,
    title: "My fav desserts",
    published: true,
    article: false,
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

puts "list #{list.title} done!"

user = User.all.sample
list = List.create!(
  {
    user_id: user.id,
    title: "Yummiest dessert flavors",
    published: true,
    article: false,
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

puts "list #{list.title} done!"

list = List.create!(
  {
    user_id: foodie1.id,
    title: "Best desserts in the UK",
    published: true,
    article: false,
    tag_list: ['food', 'desserts'],
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

puts "list #{list.title} done!"

user = User.all.sample
list = List.create!(
  {
    user_id: user.id,
    title: "Best desset toppings",
    published: true,
    article: false,
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

puts "list #{list.title} done!"

list = List.create!(
  {
    user_id: foodie2.id,
    title: "Top 10 toppings",
    published: true,
    article: false,
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

puts "list #{list.title} done!"

list = List.create!(
  {
    user_id: foodie3.id,
    title: "Best 10 Mediterranean recipes",
    published: true,
    article: false,
    tag_list: ['food', 'mediterranean', 'recipe'],
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

puts "list #{list.title} done!"

list = List.create!(
  {
    user_id: tom.id,
    title: "My top 10 food dishes ever",
    published: true,
    article: false,
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1655628448/list-it/food_xaykti.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

puts "list #{list.title} done!"

list = List.create!(
  {
    user_id: nuria.id,
    title: "My favourite dishes",
    published: true,
    article: false,
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1655628514/list-it/how-to-cook-steak-1061w_nkqjko.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

puts "list #{list.title} done!"

list = List.create!(
  {
    user_id: ana.id,
    title: "Best food dishes",
    published: true,
    article: false,
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1655628610/list-it/food-2_ilbmka.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

puts "list #{list.title} done!"

list = List.create!(
  {
    user_id: tom.id,
    title: "Fav hobbies",
    published: true,
    article: false,
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1655628730/list-it/hobby_promo-master768_ndcynb.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

puts "list #{list.title} done!"

list = List.create!(
  {
    user_id: nuria.id,
    title: "Hobbies I enjoy the most",
    published: true,
    article: false,
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1655628765/list-it/What-are-your-Hobbies_hpwfux.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

puts "list #{list.title} done!"

list = List.create!(
  {
    user_id: ana.id,
    title: "My top hobbies",
    published: true,
    article: false,
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1655628854/list-it/hobbies_kyowxp.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

puts "list #{list.title} done!"

user = User.all.sample
list = List.create!(
  {
    user_id: user.id,
    title: "My top hobbies",
    published: true,
    article: false,
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1655628812/list-it/cast_frj3yn.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

puts "list #{list.title} done!"

list = List.create!(
  {
    user_id: ana.id,
    title: "Most paid professions - IMO",
    published: true,
    article: false,
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

puts "list #{list.title} done!"

list = List.create!(
  {
    user_id: ana.id,
    title: "Top 10 skills to have at work",
    published: true,
    article: false,
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

puts "list #{list.title} done!"

list = List.create!(
  {
    user_id: ana.id,
    title: "Most difficult mountains to climb",
    published: true,
    article: false,
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

puts "list #{list.title} done!"

list = List.create!(
  {
    user_id: tom.id,
    title: "Programming languages to learn in 2022",
    published: true,
    article: false,
    tag_list: ['programming', 'code'],
    created_at: Faker::Time.between(from: DateTime.now - 800, to: DateTime.now)
  }
)
8.times do
  Item.create!(
    {
      name: Faker::ProgrammingLanguage.name,
      list_id: list.id
    }
  )
end

puts "list #{list.title} done!"

list = List.create!(
  {
    user_id: user.id,
    title: "Top 10 languages to code a website",
    published: true,
    article: false,
    tag_list: ['programming', 'code'],
    created_at: Faker::Time.between(from: DateTime.now - 800, to: DateTime.now)
  }
)
10.times do
  Item.create!(
    {
      name: Faker::ProgrammingLanguage.name,
      list_id: list.id
    }
  )
end

puts "list #{list.title} done!"

list = List.create!(
  {
    user_id: user.id,
    title: "Programming languages I am fluent",
    published: true,
    article: false,
    tag_list: ['programming', 'code'],
    created_at: Faker::Time.between(from: DateTime.now - 800, to: DateTime.now)
  }
)
7.times do
  Item.create!(
    {
      name: Faker::ProgrammingLanguage.name,
      list_id: list.id
    }
  )
end

puts "list #{list.title} done!"

user = User.all.sample
list = List.create!(
  {
    user_id: user.id,
    title: "Top 10 programming languages",
    published: true,
    article: false,
    tag_list: ['programming', 'code'],
    created_at: Faker::Time.between(from: DateTime.now - 800, to: DateTime.now)
  }
)
10.times do
  Item.create!(
    {
      name: Faker::ProgrammingLanguage.name,
      list_id: list.id
    }
  )
end

puts "list #{list.title} done!"

user = User.all.sample
list = List.create!(
  {
    user_id: user.id,
    title: "Best cars",
    published: true,
    article: false,
    tag_list: ['car'],
    created_at: Faker::Time.between(from: DateTime.now - 800, to: DateTime.now)
  }
)
10.times do
  Item.create!(
    {
      name: Faker::Vehicle.make,
      list_id: list.id
    }
  )
end

puts "list #{list.title} done!"

user = User.all.sample
list = List.create!(
  {
    user_id: user.id,
    title: "Top car brands",
    published: true,
    article: false,
    tag_list: ['car'],
    created_at: Faker::Time.between(from: DateTime.now - 800, to: DateTime.now)
  }
)
10.times do
  Item.create!(
    {
      name: Faker::Vehicle.make,
      list_id: list.id
    }
  )
end

puts "list #{list.title} done!"

list = List.create!(
  {
    user_id: tom.id,
    title: "My favourite Past Participle verbs",
    published: true,
    article: false,
    tag_list: ['verbs', 'grammar'],
    created_at: Faker::Time.between(from: DateTime.now - 800, to: DateTime.now)
  }
)
10.times do
  Item.create!(
    {
      name: Faker::Verb.past_participle,
      list_id: list.id
    }
  )
end

puts "list #{list.title} done!"

list = List.create!(
  {
    user_id: ana.id,
    title: "Favourite World Cup teams",
    published: true,
    article: false,
    tag_list: ['world cup', 'football'],
    created_at: Faker::Time.between(from: DateTime.now - 800, to: DateTime.now)
  }
)
10.times do
  Item.create!(
    {
      name: Faker::WorldCup.team,
      list_id: list.id
    }
  )
end

puts "list #{list.title} done!"

user = User.all.sample
list = List.create!(
  {
    user_id: user.id,
    title: "Best 2022 books",
    published: true,
    article: false,
    tag_list: ['books', 'reading'],
    created_at: Faker::Time.between(from: DateTime.now - 800, to: DateTime.now)
  }
)
10.times do
  Item.create!(
    {
      name: Faker::Book.title,
      list_id: list.id
    }
  )
end

puts "list #{list.title} done!"

list = List.create!(
  {
    user_id: nuria.id,
    title: "Top 10 books all time",
    published: true,
    article: false,
    tag_list: ['books', 'reading'],
    created_at: Faker::Time.between(from: DateTime.now - 800, to: DateTime.now)
  }
)
10.times do
  Item.create!(
    {
      name: Faker::Book.title,
      list_id: list.id
    }
  )
end

puts "list #{list.title} done!"

list = List.create!(
  {
    user_id: ana.id,
    title: "10 Favourite books",
    published: true,
    article: false,
    tag_list: ['books', 'reading'],
    created_at: Faker::Time.between(from: DateTime.now - 800, to: DateTime.now)
  }
)
10.times do
  Item.create!(
    {
      name: Faker::Book.title,
      list_id: list.id
    }
  )
end

puts "list #{list.title} done!"

list = List.create!(
  {
    user_id: tom.id,
    title: "10 books for summer reading",
    published: true,
    article: false,
    tag_list: ['books', 'reading', 'summer'],
    created_at: Faker::Time.between(from: DateTime.now - 800, to: DateTime.now)
  }
)
10.times do
  Item.create!(
    {
      name: Faker::Book.title,
      list_id: list.id
    }
  )
end

puts "list #{list.title} done!"

list = List.create!(
  {
    user_id: nuria.id,
    title: "Most amazing writers of all times",
    published: true,
    article: false,
    tag_list: ['books', 'authors'],
    created_at: Faker::Time.between(from: DateTime.now - 800, to: DateTime.now)
  }
)
10.times do
  Item.create!(
    {
      name: Faker::Book.author,
      list_id: list.id
    }
  )
end

puts "list #{list.title} done!"

list = List.create!(
  {
    user_id: ana.id,
    title: "Tolkien characters I hate the most",
    published: true,
    article: false,
    tag_list: ['books', 'tolkien'],
    created_at: Faker::Time.between(from: DateTime.now - 800, to: DateTime.now)
  }
)
10.times do
  Item.create!(
    {
      name: Faker::Fantasy::Tolkien.character,
      list_id: list.id
    }
  )
end

puts "list #{list.title} done!"

user = User.all.sample
list = List.create!(
  {
    user_id: user.id,
    title: "Tolkien locations I wish I could visit",
    published: true,
    article: false,
    tag_list: ['books', 'tolkien'],
    created_at: Faker::Time.between(from: DateTime.now - 800, to: DateTime.now)
  }
)
10.times do
  Item.create!(
    {
      name: Faker::Fantasy::Tolkien.location,
      list_id: list.id
    }
  )
end

puts "list #{list.title} done!"

list = List.create!(
  {
    user_id: ana.id,
    title: "Favourite animals",
    published: true,
    article: false,
    tag_list: ['animals'],
    created_at: Faker::Time.between(from: DateTime.now - 800, to: DateTime.now)
  }
)
10.times do
  Item.create!(
    {
      name: Faker::Creature::Animal.name,
      list_id: list.id
    }
  )
end

puts "list #{list.title} done!"

list = List.create!(
  {
    user_id: tom.id,
    title: "Animals I want to be",
    published: true,
    article: false,
    tag_list: ['animals'],
    created_at: Faker::Time.between(from: DateTime.now - 800, to: DateTime.now)
  }
)
10.times do
  Item.create!(
    {
      name: Faker::Creature::Animal.name,
      list_id: list.id
    }
  )
end

puts "list #{list.title} done!"

list = List.create!(
  {
    user_id: nuria.id,
    title: "Animal sounds I can impersonate",
    published: true,
    article: false,
    tag_list: ['animals'],
    created_at: Faker::Time.between(from: DateTime.now - 800, to: DateTime.now)
  }
)
10.times do
  Item.create!(
    {
      name: Faker::Creature::Animal.name,
      list_id: list.id
    }
  )
end

puts "list #{list.title} done!"

puts "All lists created!"

puts "Attaching list images"

lists = List.all

# lists.each do |l|
#   list_image = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1655562546/list-it/pizza2_evnf9u.jpg")
#   ActiveRecord::Base.transaction do
#     l.photo.attach(io: list_image, filename: 'puzzle.jpg', content_type: 'image/jpg')
#   end
# end

# puts "Images attached!"

puts "Creating votes..."

users = User.all

1000.times do
  list = lists.sample
  if list.published?
    list.votes.create(user: users.sample)
  end
end

puts "Votes created!"

puts "Creating pins..."

users = User.all

lists.each do |list|
  if list.published?
    rand(7..12).times do
      list.favourite_lists.create(user: users.sample)
    end
  end
end

puts "Pins created!"

# puts "Creating Tags..."

# puts "Creating List Tags..."
