20.times do
  User.create(username: Faker::Name.name, password: "123")
end

100.times do
  Post.create(title: Faker::Lorem.words(num = 3, supplemental = false, content: Faker::Lorem.words(num = 50, supplemental = false)).join(" "), user_id: rand(1..20))
end
