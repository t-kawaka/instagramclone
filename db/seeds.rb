

5.times do |n|
  name  = "name #{n+1}"
  username = "username #{n+1}"
  email = "example-#{n+1}@railstutorial.org"
  password  = "foobar"
  profile = "/stamp/public/umaru.jpg"
  
  User.create!( name: name,
                username: username,
                email: email,
                profile: profile,
                password: password,
                password_confirmation: password,
                )
                
  user_id = Faker::Number.between(1,5)
  content = "content #{n+1}"
  image = "/stamp/public/castle.jpg"
  Blog.create!( content: content,
                image: image,
                user_id: user_id,
                )
end