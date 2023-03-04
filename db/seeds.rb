puts "🌱 Seeding movies..."

# Seed your database here
10.times do
  # create a game with random data
  user = User.create(
    username: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Lorem.word
  )

  # create between 1 and 5 reviews for each game
  rand(1..5).times do
    Movie.create(
      title: Faker::Movie.title,
      director: Faker::Name.unique.name,
      year: rand(1985..2015),
      plot: Faker::Lorem.words,
      poster: Faker::Quote.singular_siegler,
      user_id: user.id
    )
  end
end

puts "✅ Done seeding!"
