
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


5.times do |n|
  name = Faker::Dragonball.name
  username = Faker::Dragonball.username
  email = Faker::Internet.email
  password = "foobar"
  profile = "/stamp/public/うまる.jpg"
  
  user_id = Faker:: Number.between(1,5)
  content = Faker::Internet.content
  image = "/stamp/public/メインビジュアル.jpg"
  
  User.create!( name: name,
                email: email,
                profile: profile,
                password: password,
                password_confirmation: password,
                )
  Blog.create!( content: content,
                image: image,
                user_id: user_id,
                )
end