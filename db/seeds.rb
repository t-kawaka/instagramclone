50.times do |n|
  name  = "name#{n+1}"
  username = "username #{n+1}"
  email = "test#{n+1}@gmail.com"
  password  = "foobar"

  User.create!( name: name,
                username: username,
                email: email,
                profile: File.open("./app/assets/images/member.jpg"),
                password: password,
                password_confirmation: password,
              )
end

50.times do |n|
  user_id = Faker::Number.between(1,50)
  content = "松山城を撮影する"
  Blog.create!( content: content,
                image: File.open("./app/assets/images/castle.jpg"),
                user_id: user_id,
              )
end
