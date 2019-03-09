2.times do |n|
  name  = "name #{n+1}"
  username = "username #{n+1}"
  email = "test#{n+1}@gmail.com"
  password  = "foobar"
  
  User.create!( name: name,
                username: username,
                email: email,
                profile: File.open("./app/assets/images/umaru.jpg"),
                password: password,
                password_confirmation: password,
                )
                
end

2.times do |n|
  user_id = Faker::Number.between(13,14)
  content = "content #{n+1}"
  Blog.create!( content: content,
                image: File.open("./app/assets/images/castle.jpg"),
                user_id: user_id,
                )
end