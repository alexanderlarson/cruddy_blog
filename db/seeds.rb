20.times do
  User.create(username: Faker::Internet.user_name, email: Faker::Internet.email, password: "123")
end

100.times do
  Post.create(title: Faker::Lorem.words(3).join(" "), content: Faker::Lorem.words(50).join(" "), user_id: rand(1..50))
end
