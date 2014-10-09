# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


["alice", "domenick.spinka", "dorian.breitenberg", "edd", "laurie"].each do |name|
  User.create(username: name, email: "#{name}@gmail.com")
end

3.times do
  Post.create(user_id: 1, body: Faker::Lorem.paragraph(4))
end

6.times do
  Post.create(user_id: 2, body: Faker::Lorem.paragraph(4))
end

4.times do
  Post.create(user_id: 3, body: Faker::Lorem.paragraph(4))
end

5.times do
  Post.create(user_id: 4, body: Faker::Lorem.paragraph(4))
end

2.times do
  Post.create(user_id: 5, body: Faker::Lorem.paragraph(4))
end

Like.create(user_id: 1, post_id: 1)
Like.create(user_id: 1, post_id: 4)
Like.create(user_id: 1, post_id: 5)
Like.create(user_id: 1, post_id: 8)
Like.create(user_id: 1, post_id: 9)

Like.create(user_id: 1, post_id: 1)
Like.create(user_id: 1, post_id: 7)
Like.create(user_id: 1, post_id: 9)
Like.create(user_id: 1, post_id: 10)
Like.create(user_id: 1, post_id: 3)

Like.create(user_id: 1, post_id: 8)
Like.create(user_id: 1, post_id: 7)
Like.create(user_id: 1, post_id: 6)
Like.create(user_id: 1, post_id: 3)

Like.create(user_id: 1, post_id: 2)
Like.create(user_id: 1, post_id: 4)
Like.create(user_id: 1, post_id: 11)

Like.create(user_id: 1, post_id: 2)
Like.create(user_id: 1, post_id: 6)
Like.create(user_id: 1, post_id: 8)
Like.create(user_id: 1, post_id: 9)

Comment.create(post_id: 1, user_id: 1, body: Faker::Lorem.paragraph(5))
Comment.create(post_id: 3, user_id: 1, body: Faker::Lorem.paragraph(5))
Comment.create(post_id: 2, user_id: 1, body: Faker::Lorem.paragraph(5))
Comment.create(post_id: 4, user_id: 1, body: Faker::Lorem.paragraph(5))
Comment.create(post_id: 6, user_id: 1, body: Faker::Lorem.paragraph(5))

Comment.create(post_id: 2, user_id: 2, body: Faker::Lorem.paragraph(5))
Comment.create(post_id: 6, user_id: 2, body: Faker::Lorem.paragraph(5))
Comment.create(post_id: 8, user_id: 2, body: Faker::Lorem.paragraph(5))
Comment.create(post_id: 10, user_id: 2, body: Faker::Lorem.paragraph(5))

Comment.create(post_id: 8, user_id: 3, body: Faker::Lorem.paragraph(5))

Comment.create(post_id: 11, user_id: 4, body: Faker::Lorem.paragraph(5))
Comment.create(post_id: 7, user_id: 4, body: Faker::Lorem.paragraph(5))

Comment.create(post_id: 5, user_id: 5, body: Faker::Lorem.paragraph(5))
Comment.create(post_id: 7, user_id: 5, body: Faker::Lorem.paragraph(5))
Comment.create(post_id: 9, user_id: 5, body: Faker::Lorem.paragraph(5))

