require "open-uri"
require 'faker'

puts "Cleaning Database..."

User.destroy_all
Follow.destroy_all
List.destroy_all
Item.destroy_all
FavouriteList.destroy_all
Vote.destroy_all

puts "Database clean"

puts "Creating Users and followers..."

tom = User.create(
  username: "bomtrookes",
  email: "tom@test.com",
  password: "pass123",
  avatar: "https://res.cloudinary.com/mygreenhouses/image/upload/v1656441174/list-it/user%20faces/tom_aoclbs.jpg",
  bio: Faker::GreekPhilosophers.quote,
  admin: true
)

nuria = User.create(
  username: "nuria",
  email: "nuria@test.com",
  password: "pass123",
  avatar: "https://res.cloudinary.com/mygreenhouses/image/upload/v1656441172/list-it/user%20faces/Nuria_ucnd6q.jpg",
  bio:  Faker::GreekPhilosophers.quote,
  admin: true
)

ana = User.create(
  username: "Athelas85",
  email: "athe@test.com",
  password: "pass123",
  avatar: "https://res.cloudinary.com/mygreenhouses/image/upload/v1656441169/list-it/user%20faces/Ana_g7t7my.jpg",
  bio:  Faker::GreekPhilosophers.quote,
  admin: true
)

tarantino = User.create(
  username: "Tarantino",
  email: "tarantino@test.com",
  password: "pass123",
  avatar: "https://res.cloudinary.com/mygreenhouses/image/upload/v1656590768/list-it/user%20faces/tarantino_jtco2v.jpg",
  bio:  Faker::GreekPhilosophers.quote
)

foodie1 = User.create(
  username: "foodie64",
  email: "food1@test.com",
  password: "pass123",
  avatar: "https://res.cloudinary.com/mygreenhouses/image/upload/v1656441172/list-it/user%20faces/samy_uxx4iz.jpg",
  bio:  Faker::GreekPhilosophers.quote
)

foodie2 = User.create(
  username: "food_lover",
  email: "food2@test.com",
  password: "pass123",
  avatar: "https://res.cloudinary.com/mygreenhouses/image/upload/v1656441173/list-it/user%20faces/stephani_dubjj0.jpg",
  bio: Faker::GreekPhilosophers.quote
)

foodie3 = User.create(
  username: "FoodistLord",
  email: "food3@test.com",
  password: "pass123",
  avatar: "https://res.cloudinary.com/mygreenhouses/image/upload/v1656441170/list-it/user%20faces/boris_atd0ra.jpg",
  bio: Faker::GreekPhilosophers.quote
)

foodie4 = User.create(
  username: "food_only",
  email: "food4@test.com",
  password: "pass123",
  avatar: "https://res.cloudinary.com/mygreenhouses/image/upload/v1656441171/list-it/user%20faces/joe_y9nwge.jpg",
  bio: Faker::GreekPhilosophers.quote
)

foodie5 = User.create(
  username: "foodieBoss",
  email: "food5@test.com",
  password: "pass123",
  avatar: "https://res.cloudinary.com/mygreenhouses/image/upload/v1656441174/list-it/user%20faces/seb_hyezd2.jpg",
  bio: Faker::GreekPhilosophers.quote
)

foodie6 = User.create(
  username: "FOODMANIAC",
  email: "food6@test.com",
  password: "pass123",
  avatar: "https://res.cloudinary.com/mygreenhouses/image/upload/v1656441171/list-it/user%20faces/Josh_fa8cew.jpg",
  bio: Faker::GreekPhilosophers.quote
)

foodie7 = User.create(
  username: "foodQueen",
  email: "food7@test.com",
  password: "pass123",
  avatar: "https://res.cloudinary.com/mygreenhouses/image/upload/v1656441170/list-it/user%20faces/cat_ssnfbz.jpg",
  bio: Faker::GreekPhilosophers.quote
)

Follow.create(follower_id: tom.id, followed_id: nuria.id)
Follow.create(follower_id: tom.id, followed_id: ana.id)

# Follow.create(follower_id: nuria.id, followed_id: tom.id)
Follow.create(follower_id: nuria.id, followed_id: ana.id)

# Follow.create(follower_id: ana.id, followed_id: tom.id)
Follow.create(follower_id: ana.id, followed_id: nuria.id)

# Follow.create(follower_id: foodie1.id, followed_id: tom.id)
Follow.create(follower_id: foodie2.id, followed_id: ana.id)
Follow.create(follower_id: foodie3.id, followed_id: nuria.id)

# Follow.create(follower_id: foodie4.id, followed_id: tom.id)
Follow.create(follower_id: foodie5.id, followed_id: ana.id)
Follow.create(follower_id: foodie6.id, followed_id: nuria.id)

# Follow.create(follower_id: foodie7.id, followed_id: tom.id)
Follow.create(follower_id: foodie7.id, followed_id: ana.id)
Follow.create(follower_id: foodie7.id, followed_id: foodie1.id)
Follow.create(follower_id: foodie7.id, followed_id: foodie2.id)
Follow.create(follower_id: foodie7.id, followed_id: foodie3.id)
Follow.create(follower_id: foodie7.id, followed_id: foodie4.id)
Follow.create(follower_id: foodie7.id, followed_id: foodie5.id)

le_wagon_avatars = [
  "https://res.cloudinary.com/mygreenhouses/image/upload/v1656441175/list-it/user%20faces/setfan_wurxje.jpg",
  "https://res.cloudinary.com/mygreenhouses/image/upload/v1656441173/list-it/user%20faces/sean_xxxutc.jpg",
  "https://res.cloudinary.com/mygreenhouses/image/upload/v1656441174/list-it/user%20faces/mark_acomqe.png",
  "https://res.cloudinary.com/mygreenhouses/image/upload/v1656441174/list-it/user%20faces/yuvel_mnoguw.jpg",
  "https://res.cloudinary.com/mygreenhouses/image/upload/v1656441173/list-it/user%20faces/shenton_gt3vxg.png",
  "https://res.cloudinary.com/mygreenhouses/image/upload/v1656441173/list-it/user%20faces/bruno_ma2lyc.png",
  "https://res.cloudinary.com/mygreenhouses/image/upload/v1656441173/list-it/user%20faces/soojin_ilnsxv.jpg",
  "https://res.cloudinary.com/mygreenhouses/image/upload/v1656441174/list-it/user%20faces/tracy_ecnmon.jpg",
  "https://res.cloudinary.com/mygreenhouses/image/upload/v1656441173/list-it/user%20faces/simone_ni8uq8.jpg",
  "https://res.cloudinary.com/mygreenhouses/image/upload/v1656441173/list-it/user%20faces/stanley_eoy6rs.jpg",
  "https://res.cloudinary.com/mygreenhouses/image/upload/v1656441172/list-it/user%20faces/megan_ls0syc.jpg",
  "https://res.cloudinary.com/mygreenhouses/image/upload/v1656441172/list-it/user%20faces/roel_mgkca5.jpg",
  "https://res.cloudinary.com/mygreenhouses/image/upload/v1656441172/list-it/user%20faces/meehir_suycap.jpg",
  "https://res.cloudinary.com/mygreenhouses/image/upload/v1656441172/list-it/user%20faces/kurt_kpivga.jpg",
  "https://res.cloudinary.com/mygreenhouses/image/upload/v1656441172/list-it/user%20faces/madina_chtffm.jpg",
  "https://res.cloudinary.com/mygreenhouses/image/upload/v1656441172/list-it/user%20faces/Mustafa_lhcjuv.jpg",
  "https://res.cloudinary.com/mygreenhouses/image/upload/v1656441172/list-it/user%20faces/michael_rryy05.jpg",
  "https://res.cloudinary.com/mygreenhouses/image/upload/v1656441172/list-it/user%20faces/josef_vlx6cw.jpg",
  "https://res.cloudinary.com/mygreenhouses/image/upload/v1656441171/list-it/user%20faces/jess_szgsrs.jpg",
  "https://res.cloudinary.com/mygreenhouses/image/upload/v1656441171/list-it/user%20faces/juan_qyvxqa.jpg",
  "https://res.cloudinary.com/mygreenhouses/image/upload/v1656441171/list-it/user%20faces/Jonno_lpzmef.jpg",
  "https://res.cloudinary.com/mygreenhouses/image/upload/v1656441171/list-it/user%20faces/harriet_mslcid.jpg",
  "https://res.cloudinary.com/mygreenhouses/image/upload/v1656441171/list-it/user%20faces/jenny_khkpt1.jpg",
  "https://res.cloudinary.com/mygreenhouses/image/upload/v1656441171/list-it/user%20faces/gabriel_fbgtwu.jpg",
  "https://res.cloudinary.com/mygreenhouses/image/upload/v1656441171/list-it/user%20faces/hugo_dtzjoc.jpg",
  "https://res.cloudinary.com/mygreenhouses/image/upload/v1656441171/list-it/user%20faces/heba_ga9fij.jpg",
  "https://res.cloudinary.com/mygreenhouses/image/upload/v1656441171/list-it/user%20faces/eddie_i7dnr1.jpg",
  "https://res.cloudinary.com/mygreenhouses/image/upload/v1656441171/list-it/user%20faces/ed_ouyeqb.jpg",
  "https://res.cloudinary.com/mygreenhouses/image/upload/v1656441171/list-it/user%20faces/dorothy_dp9yus.jpg",
  "https://res.cloudinary.com/mygreenhouses/image/upload/v1656441171/list-it/user%20faces/darren_iqbulq.jpg",
  "https://res.cloudinary.com/mygreenhouses/image/upload/v1656441170/list-it/user%20faces/doreem_x7kxwt.jpg",
  "https://res.cloudinary.com/mygreenhouses/image/upload/v1656441170/list-it/user%20faces/diego_f8zyuc.jpg",
  "https://res.cloudinary.com/mygreenhouses/image/upload/v1656441170/list-it/user%20faces/david_copy_uxtjrw.jpg",
  "https://res.cloudinary.com/mygreenhouses/image/upload/v1656441170/list-it/user%20faces/david_v1zlmi.jpg",
  "https://res.cloudinary.com/mygreenhouses/image/upload/v1656441170/list-it/user%20faces/ashley_a7qzhk.jpg",
  "https://res.cloudinary.com/mygreenhouses/image/upload/v1656441170/list-it/user%20faces/daniela_pwrf86.jpg",
  "https://res.cloudinary.com/mygreenhouses/image/upload/v1656441170/list-it/user%20faces/daniel_glyqvo.jpg",
  "https://res.cloudinary.com/mygreenhouses/image/upload/v1656441170/list-it/user%20faces/alex_no3gxz.jpg",
  "https://res.cloudinary.com/mygreenhouses/image/upload/v1656441170/list-it/user%20faces/anna_tdxjqr.jpg",
  "https://res.cloudinary.com/mygreenhouses/image/upload/v1656441169/list-it/user%20faces/andy_gm4ve4.jpg",
  "https://res.cloudinary.com/mygreenhouses/image/upload/v1656441170/list-it/user%20faces/armaan_xzazdf.jpg",
  "https://res.cloudinary.com/mygreenhouses/image/upload/v1656441169/list-it/user%20faces/alessia_ult64z.jpg",
]

i = 0

students = []

le_wagon_avatars.each do |avatar|

  student = User.create!(
    {
      email: Faker::Internet.email,
      password: "pass123",
      bio: Faker::GreekPhilosophers.quote,
      username: Faker::Internet.username,
      avatar: "#{avatar}"
    }
  )

  students << student

  # Follow.create(follower_id: student.id, followed_id: tom.id)
  Follow.create(follower_id: student.id, followed_id: ana.id)
  Follow.create(follower_id: student.id, followed_id: nuria.id)

  Follow.create(follower_id: tom.id, followed_id: student.id)
  Follow.create(follower_id: nuria.id, followed_id: student.id)
  Follow.create(follower_id: ana.id, followed_id: student.id)

    i += 3
  end

  avatar_id = 1

# tom's followers

rand(10..20).times do

  user_a = User.create!(
    {
      email: Faker::Internet.email,
      password: "pass123",
      bio: Faker::GreekPhilosophers.quote,
      username: "#{Faker::Name.first_name}_#{i}",
      avatar: "https://xsgames.co/randomusers/assets/avatars/male/#{avatar_id}.jpg"
    }
  )

  user_b = User.create!(
    {
      email: Faker::Internet.email,
      password: "pass123",
      bio: Faker::GreekPhilosophers.quote,
      username: "#{i}_#{Faker::Internet.username}",
      avatar: "https://xsgames.co/randomusers/assets/avatars/female/#{avatar_id}.jpg"
    }
  )

  avatar_id += 1

  user_c = User.create!(
    {
      email: Faker::Internet.email,
      password: "pass123",
      bio: Faker::GreekPhilosophers.quote,
      username: "#{Faker::Name.first_name}#{i}",
      avatar: "https://xsgames.co/randomusers/assets/avatars/female/#{avatar_id}.jpg"
    }
  )

  avatar_id += 1

  Follow.create(follower_id: user_a.id, followed_id: user_b.id)
  Follow.create(follower_id: user_a.id, followed_id: user_c.id)

  Follow.create(follower_id: user_b.id, followed_id: user_a.id)
  Follow.create(follower_id: user_b.id, followed_id: user_c.id)

  Follow.create(follower_id: user_c.id, followed_id: user_a.id)
  Follow.create(follower_id: user_c.id, followed_id: user_b.id)

  Follow.create(follower_id: tom.id, followed_id: user_a.id)

  # Follow.create(follower_id: user_a.id, followed_id: tom.id)
  # Follow.create(follower_id: user_b.id, followed_id: tom.id)
  # Follow.create(follower_id: user_c.id, followed_id: tom.id)

  Follow.create(follower_id: foodie1.id, followed_id: user_c.id)
  Follow.create(follower_id: foodie4.id, followed_id: user_c.id)
  Follow.create(follower_id: user_b.id, followed_id: foodie1.id)
  Follow.create(follower_id: user_b.id, followed_id: foodie4.id)
  Follow.create(follower_id: user_c.id, followed_id: foodie7.id)

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
      avatar: "https://xsgames.co/randomusers/assets/avatars/male/#{avatar_id}.jpg"
    }
  )

  avatar_id += 1

  user_b = User.create!(
    {
      email: Faker::Internet.email,
      password: "pass123",
      bio: Faker::GreekPhilosophers.quote,
      username: "#{i}_#{Faker::Internet.username}",
      avatar: "https://xsgames.co/randomusers/assets/avatars/male/#{avatar_id}.jpg"
    }
  )

  user_c = User.create!(
    {
      email: Faker::Internet.email,
      password: "pass123",
      bio: Faker::GreekPhilosophers.quote,
      username: "#{Faker::Name.first_name}#{i}",
      avatar: "https://xsgames.co/randomusers/assets/avatars/female/#{avatar_id}.jpg"
    }
  )

  avatar_id += 1

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

  Follow.create(follower_id: foodie2.id, followed_id: user_c.id)
  Follow.create(follower_id: foodie5.id, followed_id: user_c.id)
  Follow.create(follower_id: user_b.id, followed_id: foodie2.id)
  Follow.create(follower_id: user_b.id, followed_id: foodie5.id)
  Follow.create(follower_id: foodie7.id, followed_id: user_c.id)

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
      avatar:  "https://xsgames.co/randomusers/assets/avatars/male/#{avatar_id}.jpg"
    }
  )

  user_b = User.create!(
    {
      email: Faker::Internet.email,
      password: "pass123",
      bio: Faker::GreekPhilosophers.quote,
      username: "#{i}_#{Faker::Internet.username}",
      avatar:  "https://xsgames.co/randomusers/assets/avatars/female/#{avatar_id}.jpg"
    }
  )

  avatar_id += 1

  user_c = User.create!(
    {
      email: Faker::Internet.email,
      password: "pass123",
      bio: Faker::GreekPhilosophers.quote,
      username: "#{Faker::Name.first_name}#{i}",
      avatar: "https://xsgames.co/randomusers/assets/avatars/female/#{avatar_id}.jpg"
    }
  )

  avatar_id += 1

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

  Follow.create(follower_id: foodie3.id, followed_id: user_c.id)
  Follow.create(follower_id: foodie6.id, followed_id: user_c.id)
  Follow.create(follower_id: user_b.id, followed_id: foodie6.id)
  Follow.create(follower_id: user_b.id, followed_id: foodie3.id)

  i += 5

end

# tarantino's followers

User.all.each do |user|
  Follow.create(follower_id: user.id, followed_id: tarantino.id)
end

puts "User and followings created!"

puts "Creating Lists and items..."

# tom
list1 = List.create!(
  {
    user_id: tom.id,
    title: "Best Movies",
    published: false,
    article: false,
    tag_list: ["cinema", "movies"],
    created_at: Faker::Time.between(from: DateTime.now - 10, to: DateTime.now)
  }
)

list2 = List.create!(
  {
    user_id: tom.id,
    title: "Walks in London",
    published: false,
    article: false,
    tag_list: ["steps", "london", "walks"],
    created_at: Faker::Time.between(from: DateTime.now - 20, to: DateTime.now)
  }
)

# nuria
list3 = List.create(user_id: nuria.id, title: "Summer Holiday Destionations", published: false, tag_list: ["madrid", "spain", "summer"], article: false)

# tarantino
list4 = List.create(user_id: tarantino.id, title: "Ketchups I would die for", published: true, tag_list: ["ketchup", "food", "sauces"], article: true)
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1656619207/list-it/user%20faces/Screenshot_2022-06-30_at_20.56.14_dm28zp.png")
list4.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

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
i1 = Item.create(name: "Heinz", description: "Heinz holds the title of number 1 ketchup brand in the world for very good reasons. It's everything you expect from ketchup — sweet, tangy, and rich.", link: "#", list_id: list4.id)
item_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1656619207/list-it/user%20faces/Screenshot_2022-06-30_at_20.58.12_wxaxsk.png")
i1.photo.attach(io: item_photo, filename: 'listit.jpg', content_type: 'image/jpg')

i2 = Item.create(name: "Hunt's", description: "While always in the shadows of the other 'H' brand, Hunt's has quite a loyal following who love its simple yet robust tomato flavor.", link: "#", list_id: list4.id)
item_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1656619207/list-it/user%20faces/Screenshot_2022-06-30_at_20.57.50_fzmypf.png")
i2.photo.attach(io: item_photo, filename: 'listit.jpg', content_type: 'image/jpg')

i3 = Item.create(name: "French's", description: "French's might be more well known for producing mustard, but we thought it was due time for us to spread the good news on the brand's ketchup.", link: "#", list_id: list4.id)
item_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1656619205/list-it/user%20faces/Screenshot_2022-06-30_at_20.57.00_q6exvz.png")
i2.photo.attach(io: item_photo, filename: 'listit.jpg', content_type: 'image/jpg')

i4 = Item.create(name: "Annie's", description: "Annie's has provided kitchens with tasty prepared organic products since 1989, well before the average diner caught onto the benefits of organic eating.", link: "#", list_id: list4.id)
item_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1656619205/list-it/user%20faces/Screenshot_2022-06-30_at_20.57.30_pyyyca.png")
i2.photo.attach(io: item_photo, filename: 'listit.jpg', content_type: 'image/jpg')

i5 = Item.create(name: "365 by Wholefoods Market", description: "For many consumers, Whole Foods has built a reputation as a trustworthy source of delicious organic products.", link: "#", list_id: list4.id)
item_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1656619206/list-it/user%20faces/Screenshot_2022-06-30_at_20.56.36_cpavfo.png")
i2.photo.attach(io: item_photo, filename: 'listit.jpg', content_type: 'image/jpg')

i6 = Item.create(name: "Primal Kitchen", description: "Ketchup and healthy don't necessarily belong in the same sentence. Not only is ketchup often packed with preservatives, but a tablespoon of ketchup can also contain 4 grams of sugar.", link: "#", list_id: list4.id)
item_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1656619212/list-it/user%20faces/Screenshot_2022-06-30_at_20.57.41_jx2l20.png")
i2.photo.attach(io: item_photo, filename: 'listit.jpg', content_type: 'image/jpg')

i7 = Item.create(name: "Sir Kensington's", description: "Sir Kensington ketchup delivers a pure tomato flavor, which helps add richness.", link: "#", list_id: list4.id)
item_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1656619209/list-it/user%20faces/Screenshot_2022-06-30_at_20.57.59_e8fqoz.png")
i2.photo.attach(io: item_photo, filename: 'listit.jpg', content_type: 'image/jpg')

i8 = Item.create(name: "Del Monte", description: "Del Monte specializes in a wide range of canned tomato products, so it's no secret they also proudly produce their own ketchup.", link: "#", list_id: list4.id)
item_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1656619208/list-it/user%20faces/Screenshot_2022-06-30_at_20.56.25_zwyt1f.png")
i2.photo.attach(io: item_photo, filename: 'listit.jpg', content_type: 'image/jpg')

i9 = Item.create(name: "Trader Joe's Organic", description: "It's really good, so I made a list about it", link: "#", list_id: list4.id)
item_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1656619207/list-it/user%20faces/Screenshot_2022-06-30_at_20.58.20_k9glbf.png")
i2.photo.attach(io: item_photo, filename: 'listit.jpg', content_type: 'image/jpg')

i10 = Item.create(name: "Tesco", description: "It's really good, so I made a list about it", link: "#", list_id: list4.id)
item_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1656619204/list-it/user%20faces/Screenshot_2022-06-30_at_20.56.51_ivrs4l.png")
i2.photo.attach(io: item_photo, filename: 'listit.jpg', content_type: 'image/jpg')

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

user = students.sample
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

user = students.sample
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

user = students.sample
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

user = students.sample
list = List.create!(
  {
    user_id: user.id,
    title: "My favourite teas",
    published: true,
    article: false,
    tag_list: ['tea', 'drink'],
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

user = students.sample
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

user = students.sample
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

user = students.sample
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

user = students.sample
list = List.create!(
  {
    user_id: user.id,
    title: "Highest mountains climbed",
    published: true,
    article: false,
    tag_list: ['mountain', 'climb', 'climbing'],
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

user = students.sample
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

user = students.sample
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

user = students.sample
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

user = students.sample
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

user = students.sample
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

user = students.sample
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1656591867/list-it/user%20faces/beer_ydhkhv.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

puts "list #{list.title} done!"

user = students.sample
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1656591984/list-it/user%20faces/beer-2_ytw1so.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

puts "list #{list.title} done!"

user = students.sample
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1656592048/list-it/user%20faces/hops_czh28t.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

puts "list #{list.title} done!"

user = students.sample
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1656592085/list-it/user%20faces/malt_kvkjts.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

puts "list #{list.title} done!"

user = students.sample
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1656592144/list-it/user%20faces/bossanova_e1rd7z.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

puts "list #{list.title} done!"

user = students.sample
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1656592185/list-it/user%20faces/bossanova-2_r7xg7v.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

puts "list #{list.title} done!"

user = students.sample
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1656592225/list-it/user%20faces/camera_hstdll.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

puts "list #{list.title} done!"

user = User.all.sample
list = List.create!(
  {
    user_id: user.id,
    title: "Best mid range cameras 2022",
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1656592270/list-it/user%20faces/camera-2_z3pp4e.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

puts "list #{list.title} done!"

user = students.sample
list = List.create!(
  {
    user_id: user.id,
    title: "Favourite analogic cameras",
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1656592371/list-it/user%20faces/camera-3_oajw1s.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

puts "list #{list.title} done!"

user = students.sample
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1656592428/list-it/user%20faces/cannabis_fofwjs.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

puts "list #{list.title} done!"

user = students.sample
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1656592480/list-it/user%20faces/coffee_lfefnx.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

user = students.sample
list = List.create!(
  {
    user_id: user.id,
    title: "Top quality coffee origins",
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1656592585/list-it/user%20faces/coffee-3_icoqff.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

puts "list #{list.title} done!"

user = students.sample
list = List.create!(
  {
    user_id: user.id,
    title: "Top 10 coffee blends",
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1656592520/list-it/user%20faces/coffee-2_omx4qx.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

user = students.sample
list = List.create!(
  {
    user_id: user.id,
    title: "Favourite coffee blends",
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1656592730/list-it/user%20faces/coffee-4_bhautw.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

puts "list #{list.title} done!"

user = students.sample
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1656592756/list-it/user%20faces/colors_l0qmwi.png")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

puts "list #{list.title} done!"

user = students.sample
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1656592794/list-it/user%20faces/crypto-1_mzfa7s.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

user = students.sample
list = List.create!(
  {
    user_id: user.id,
    title: "Top crypto scams",
    published: true,
    article: false,
    tag_list: ['crypto', 'scam'],
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1656592862/list-it/user%20faces/crypto-2_czxeyg.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

puts "list #{list.title} done!"

user = students.sample
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1656592897/list-it/user%20faces/crypto-3_ixa87b.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

puts "list #{list.title} done!"

user = students.sample
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1656592945/list-it/user%20faces/crypto-4_ixa8vp.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

puts "list #{list.title} done!"

user = students.sample
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1656593018/list-it/user%20faces/dc-1_h5ipds.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

puts "list #{list.title} done!"

user = students.sample
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1656593071/list-it/user%20faces/dc-2_ozvh7v.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

puts "list #{list.title} done!"

user = students.sample
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1656593100/list-it/user%20faces/dc-3_d4pyp8.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

puts "list #{list.title} done!"

user = students.sample
list = List.create!(
  {
    user_id: user.id,
    title: "My fav desserts",
    published: true,
    article: false,
    tag_list: ['dessert', 'foodporn', 'foodie'],
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1656593185/list-it/user%20faces/dessert-2_vrobv5.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

puts "list #{list.title} done!"

user = students.sample
list = List.create!(
  {
    user_id: foodie6.id,
    title: "Yummiest dessert flavors",
    published: true,
    article: false,
    tag_list: ['food', 'dessert'],
    created_at: Faker::Time.between(from: DateTime.now - 50, to: DateTime.now)
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1656593185/list-it/user%20faces/dessert-3_ixdran.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

puts "list #{list.title} done!"

list = List.create!(
  {
    user_id: foodie1.id,
    title: "Best desserts in the UK",
    published: true,
    article: false,
    tag_list: ['food', 'desserts', 'foodie'],
    created_at: Faker::Time.between(from: DateTime.now - 20, to: DateTime.now)
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1656593185/list-it/user%20faces/desset_hj74n8.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

puts "list #{list.title} done!"

user = students.sample
list = List.create!(
  {
    user_id: foodie2.id,
    title: "Best desset toppings",
    published: true,
    article: false,
    tag_list: ['dessert', 'toppings', 'foodporn'],
    created_at: Faker::Time.between(from: DateTime.now - 500, to: DateTime.now)
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1656593253/list-it/user%20faces/toppings_y2dplp.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

puts "list #{list.title} done!"

list = List.create!(
  {
    user_id: foodie3.id,
    title: "Top 10 toppings",
    published: true,
    article: false,
    tag_list: ['food', 'dessert', 'toppings'],
    created_at: Faker::Time.between(from: DateTime.now - 200, to: DateTime.now)
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1656593283/list-it/user%20faces/toppings-2_hvsfws.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

puts "list #{list.title} done!"

list = List.create!(
  {
    user_id: foodie5.id,
    title: "Best toppings for icecream",
    published: true,
    article: false,
    tag_list: ['food', 'dessert', 'toppings'],
    created_at: Faker::Time.between(from: DateTime.now - 100, to: DateTime.now)
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1656593320/list-it/user%20faces/toppings-3_sqpefn.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

puts "list #{list.title} done!"

list = List.create!(
  {
    user_id: foodie6.id,
    title: "Best UK topping",
    published: true,
    article: false,
    tag_list: ['dessert', 'toppings', 'UK', 'foodporn'],
    created_at: Faker::Time.between(from: DateTime.now - 700, to: DateTime.now)
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1656593353/list-it/user%20faces/toppings-4_huoqfj.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

puts "list #{list.title} done!"

list = List.create!(
  {
    user_id: foodie3.id,
    title: "Top 10 Mediterranean recipes",
    published: true,
    article: false,
    tag_list: ['food', 'mediterranean', 'recipe'],
    created_at: Faker::Time.between(from: DateTime.now - 400, to: DateTime.now)
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1656593391/list-it/user%20faces/food-1_chodwq.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

puts "list #{list.title} done!"

list = List.create!(
  {
    user_id: foodie4.id,
    title: "Best Mediterranean food",
    published: true,
    article: false,
    tag_list: ['food', 'mediterranean', 'recipes'],
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1656593427/list-it/user%20faces/food-5_t21urr.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

puts "list #{list.title} done!"

list = List.create!(
  {
    user_id: foodie5.id,
    title: "Top UK recipes",
    published: true,
    article: false,
    tag_list: ['food', 'recipe', 'UK'],
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1656593470/list-it/user%20faces/food-6_hndjjf.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

puts "list #{list.title} done!"

list = List.create!(
  {
    user_id: foodie4.id,
    title: "Top Jamie Oliver recipes",
    published: true,
    article: false,
    tag_list: ['food', 'recipe', 'UK', 'foodie'],
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1656593534/list-it/user%20faces/jamie-1_bmq858.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

puts "list #{list.title} done!"

list = List.create!(
  {
    user_id: foodie1.id,
    title: "My top 10 food dishes ever",
    published: true,
    article: false,
    tag_list: ['food', 'foodie', 'foodporn'],
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
    user_id: foodie3.id,
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
    tag_list: ['food', 'foodie'],
    created_at: Faker::Time.between(from: DateTime.now - 50, to: DateTime.now)
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
    created_at: Faker::Time.between(from: DateTime.now - 40, to: DateTime.now)
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
    created_at: Faker::Time.between(from: DateTime.now - 20, to: DateTime.now)
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
    title: "Hobbies I picked up during quarantine",
    published: true,
    article: false,
    tag_list: ['hobbies'],
    created_at: Faker::Time.between(from: DateTime.now - 20, to: DateTime.now)
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

user = students.sample
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
    user_id: tom.id,
    title: "Most paid professions",
    published: true,
    article: false,
    tag_list: ['job', 'profession'],
    created_at: Faker::Time.between(from: DateTime.now - 10, to: DateTime.now)
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1656595647/list-it/user%20faces/money-2_bbgzw6.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

puts "list #{list.title} done!"

list = List.create!(
  {
    user_id: ana.id,
    title: "Top 10 skills to have at work",
    published: true,
    article: false,
    tag_list: ['job', 'work'],
    created_at: Faker::Time.between(from: DateTime.now - 10, to: DateTime.now)
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1656593600/list-it/user%20faces/skills_f2wvt2.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

puts "list #{list.title} done!"

user = students.sample
list = List.create!(
  {
    user_id: user.id,
    title: "Best mountains to climb with kids",
    published: true,
    article: false,
    tag_list: ['climb', 'kids', 'parenting'],
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1656593642/list-it/user%20faces/mountain-4_ehhns8.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

list = List.create!(
  {
    user_id: ana.id,
    title: "Most difficult mountains to climb",
    published: true,
    article: false,
    tag_list: ['mountain', 'climb', 'climbing'],
    created_at: Faker::Time.between(from: DateTime.now - 80, to: DateTime.now)
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1656593919/list-it/user%20faces/mountain-5_mu9tpr.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

puts "list #{list.title} done!"

list = List.create!(
  {
    user_id: tom.id,
    title: "Programming languages to learn in 2022",
    published: true,
    article: false,
    tag_list: ['programming', 'code'],
    created_at: Faker::Time.between(from: DateTime.now - 50, to: DateTime.now)
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1656593950/list-it/user%20faces/code-1_rostco.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

puts "list #{list.title} done!"

user = students.sample
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1656593979/list-it/user%20faces/code-2_sfc0gh.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

puts "list #{list.title} done!"

user = students.sample
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1656593997/list-it/user%20faces/code-3_jfwvrv.png")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

puts "list #{list.title} done!"

user = students.sample
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1656594074/list-it/user%20faces/code-4_digbc6.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

puts "list #{list.title} done!"

user = students.sample
list = List.create!(
  {
    user_id: user.id,
    title: "Best cars",
    published: true,
    article: false,
    tag_list: ['car', 'driving'],
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1656594178/list-it/user%20faces/car-2_dnmvus.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

puts "list #{list.title} done!"

user = students.sample
list = List.create!(
  {
    user_id: user.id,
    title: "Safest cars in 2022",
    published: true,
    article: false,
    tag_list: ['car', 'safety', 'driving'],
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1656594177/list-it/user%20faces/car-1_hrnpml.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

user = students.sample
list = List.create!(
  {
    user_id: user.id,
    title: "Top car brands",
    published: true,
    article: false,
    tag_list: ['car', 'driving'],
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1656594221/list-it/user%20faces/car-3_rcggdp.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')


puts "list #{list.title} done!"

list = List.create!(
  {
    user_id: tom.id,
    title: "My favourite Past Participle verbs",
    published: true,
    article: false,
    tag_list: ['verbs', 'grammar'],
    created_at: Faker::Time.between(from: DateTime.now - 70, to: DateTime.now)
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1656594515/list-it/user%20faces/grammar_pkgtcr.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

puts "list #{list.title} done!"

user = students.sample
list = List.create!(
  {
    user_id: user.id,
    title: "Favourite World Cup teams",
    published: true,
    article: false,
    tag_list: ['worldcup', 'football', 'teams'],
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1656594548/list-it/user%20faces/cup-1_bqb5bf.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

user = students.sample
list = List.create!(
  {
    user_id: user.id,
    title: "World Cup 2022 favourites",
    published: true,
    article: false,
    tag_list: ['worldcup', 'football'],
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1656594624/list-it/user%20faces/cup-2_uacn3s.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

puts "list #{list.title} done!"

user = students.sample
list = List.create!(
  {
    user_id: user.id,
    title: "Best 2022 books",
    published: true,
    article: false,
    tag_list: ['books', 'reading', 'read'],
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1656594688/list-it/user%20faces/books-1_sjif5m.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

user = students.sample
list = List.create!(
  {
    user_id: user.id,
    title: "Best classics of all times",
    published: true,
    article: false,
    tag_list: ['books', 'reading', 'classics'],
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1656594728/list-it/user%20faces/books-3_gxzk3e.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')


puts "list #{list.title} done!"

list = List.create!(
  {
    user_id: nuria.id,
    title: "Top 10 books all time",
    published: true,
    article: false,
    tag_list: ['books', 'reading', 'read'],
    created_at: Faker::Time.between(from: DateTime.now - 40, to: DateTime.now)
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1656594728/list-it/user%20faces/books-2_n8phzl.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

puts "list #{list.title} done!"

list = List.create!(
  {
    user_id: ana.id,
    title: "10 Favourite books",
    published: true,
    article: false,
    tag_list: ['books', 'reading'],
    created_at: Faker::Time.between(from: DateTime.now - 3, to: DateTime.now)
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1656594731/list-it/user%20faces/books-4_zubnxy.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

puts "list #{list.title} done!"

list = List.create!(
  {
    user_id: tom.id,
    title: "10 kid books for summer reading",
    published: true,
    article: false,
    tag_list: ['books', 'summer', 'parenting'],
    created_at: Faker::Time.between(from: DateTime.now - 2, to: DateTime.now)
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1656594779/list-it/user%20faces/books-5_ufsvg3.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

puts "list #{list.title} done!"

list = List.create!(
  {
    user_id: nuria.id,
    title: "Best writers of 20th century",
    published: true,
    article: false,
    tag_list: ['books', 'authors'],
    created_at: Faker::Time.between(from: DateTime.now - 4, to: DateTime.now)
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1656594953/list-it/user%20faces/writer-1_iv93bf.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

puts "list #{list.title} done!"

list = List.create!(
  {
    user_id: ana.id,
    title: "Tolkien characters I hate the most",
    published: true,
    article: false,
    tag_list: ['books', 'tolkien'],
    created_at: Faker::Time.between(from: DateTime.now - 9, to: DateTime.now)
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1656594985/list-it/user%20faces/tolkien-1_cmzrni.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

puts "list #{list.title} done!"

user = students.sample
list = List.create!(
  {
    user_id: user.id,
    title: "Tolkien locations I wish I could visit",
    published: true,
    article: false,
    tag_list: ['books', 'tolkien'],
    created_at: Faker::Time.between(from: DateTime.now - 8, to: DateTime.now)
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1656595062/list-it/user%20faces/tolkien-2_dmlmsn.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

puts "list #{list.title} done!"

list = List.create!(
  {
    user_id: ana.id,
    title: "Favourite animals",
    published: true,
    article: false,
    tag_list: ['animals'],
    created_at: Faker::Time.between(from: DateTime.now - 38, to: DateTime.now)
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1656595208/list-it/user%20faces/animal-1_kowbdv.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

puts "list #{list.title} done!"

list = List.create!(
  {
    user_id: tom.id,
    title: "Animals I wish I could be",
    published: true,
    article: false,
    tag_list: ['animals'],
    created_at: Faker::Time.between(from: DateTime.now - 58, to: DateTime.now)
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1656595208/list-it/user%20faces/animal-2_w4bvvs.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

puts "list #{list.title} done!"

list = List.create!(
  {
    user_id: nuria.id,
    title: "Animal sounds I can impersonate",
    published: true,
    article: false,
    tag_list: ['animals'],
    created_at: Faker::Time.between(from: DateTime.now - 10, to: DateTime.now)
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
list_photo = URI.open("https://res.cloudinary.com/mygreenhouses/image/upload/v1656595288/list-it/user%20faces/goat_fgmoz7.jpg")
list.photo.attach(io: list_photo, filename: 'listit.jpg', content_type: 'image/jpg')

puts "list #{list.title} done!"

puts "All lists created!"

puts "Creating votes..."

users = User.all
lists = List.all

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
    rand(7..22).times do
      list.favourite_lists.create(user: users.sample)
    end
  end
end

puts "Pins created!"

puts "Removing followers from Tom"

tom.followers.delete_all
tarantino.followings.delete_all

puts "SEEDS COMPLETED!!"
