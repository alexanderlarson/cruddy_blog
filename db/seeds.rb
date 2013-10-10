20.times do
  User.create(username: Faker::Internet.user_name, email: Faker::Internet.email, password: "123")
end

100.times do
  Post.create(title: Faker::Lorem.words(3).join(" "), content: "British Ipsum toodle pip lorem knackered ipsum bangers and mash cheers mate off to the pub mate mate good day hello chaps cup of tea cup of tea crumpets hello chaps jolly good show bollocks cheerio! arse going to the loo rule britannia cheers mate bloody hell going to the loo harry potter toodle pip hello chaps good day bollocks cup of tea fish and chips God save the queen off to the pub crumpets arse harry potter knackered bloody hell tosser off to the pub toodle pip mate God save the queen cheers rule britannia bollocks bangers and mash cheers mate ron weasley", user_id: rand(1..50))
end
