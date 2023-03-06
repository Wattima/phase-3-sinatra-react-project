require 'faker'

puts "🌱 Seeding spices..."

# Seed your database here

50.times do
    User.create({username: Faker::Name.first_name, password: Faker::Name.last_name})
end

Creation.create({title: "A Blue Monday", content:"The hollow bag /nDrifted silently /nAmongst crumbling chimneys /nOn a blue monday", length: 1, category: "drama", user_id:User.all.sample.id})
Creation.create({title: "Restful Hollow", content:"I sit beneath a wide canopy of leaves /nfluttering green and white against the soft, blue sky. /nIn this restful hollow, I find the peaceful part of myself /nand quietly sit with it.", length: 1, category: "drama", user_id:User.all.sample.id})
Creation.create({title: "Essay", content:"My opinion is important, and everybody should listen to what I have to say.", length: 1, category: "true story", user_id:User.all.sample.id})
Creation.create({title: "Flash Fiction", content:"There was once a piece of flash fiction that wasn't contrived.", length: 1, category: "fiction", user_id:User.all.sample.id})
Creation.create({title: "Killer", content:"Can we guarantee that this platform supports genuine journalism? What would that even mean?", length: 1, category: "comedy", user_id:User.all.sample.id})

comments = ["Great work!", "Seems kind of dumb.", "Not for me", "What tips would you have for new writers?", "This was thought provoking.", "Can't say this really moved me all that much.", "Terrible..."]
15.times do
    Comment.create(user_id: User.all.sample.id, creation_id: Creation.all.sample.id, content: comments.sample)
end

Flag.create({user_id: User.all.sample.id, creation_id: 4, value: "Adult!"})

30.times do
    LibItem.create({user_id: User.all.sample.id, creation_id: Creation.all.sample.id})
end

100.times do
    Like.create([user_id: User.all.sample.id, creation_id:Creation.all.sample.id])
end

Tag.create({tag:"comedy"})
Tag.create({tag:"sad biz"})
Tag.create({tag:"intellectual"})

10.times do
    Taglink.create({tag_id: Tag.all.sample.id, creation_id: Creation.all.sample.id})
end

20.times do
    Donation.create({user_id: User.all.sample.id, creation_id: Creation.all.sample.id, amount: rand(1.0..100.0)})
end


puts "✅ Done seeding!"
