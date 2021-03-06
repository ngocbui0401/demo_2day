User.create!(name: "Example User",
	         email: "example@railstutorial.org",
	         password:              "foobar",
	         password_confirmation: "foobar",
	         admin: true,
	         activated: true,
             activated_at: Time.zone.now)


99.times do |n|
	name = Faker::Name.name
	email = "example-#{n+1}@railstutorial.org"
	password = "password"
	User.create!(name: name,
		         email: email,
		         password:      password,
		         password_confirmation: password,
		         activated: true,
                 activated_at: Time.zone.now)
end
users = User.order(:created_at).take(6)
50.times do
	content = Faker::Lorem.sentence(5)
	title = Faker::Name.name[0..15]
	users.each {|user| user.entries.create!(content: content, title: title)}
end

entry = Entry.first
u = User.first
50.times do
	content = Faker::Lorem.sentence(5)
	comment = entry.comments.build(content: content)
	comment.user_id = u.id
	comment.save
end
# Following relationships
users = User.all
user  = users.first
following = users[2..50]
followers = users[3..40]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }