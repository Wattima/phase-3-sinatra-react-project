require 'faker'

# Create some users
10.times do
  User.create(
    username: Faker::Internet.username,
    password: 'password'
  )
end

# Create some movies
5.times do
  Movie.create(
    title: Faker::Movie.title,
    description: Faker::Lorem.paragraph
  )
end

