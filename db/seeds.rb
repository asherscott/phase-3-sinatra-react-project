puts "🌱 Seeding spices..."

# Seed your database here
puts "🌱 creating games..."
10.times do
    Game.create(
        name: Faker::Game.title, 
        genre: Faker::Game.genre, 
        developer: Faker::Company.name, 
        platform: Faker::Game.platform, 
        description: Faker::GreekPhilosophers.quote, 
        release: Faker::Date.between(from: '1998-09-23', to: '2021-09-25')
    )
end

puts "🌱 creating reviews..."
50.times do 
    Review.create(
        game_id: rand(1..10),
        user_id: rand(1..20),
        rating: rand(1..5),
        comment: Faker::GreekPhilosophers.quote,
        date: Faker::Date.between(from: '1998-09-23', to: '2021-09-25')
    )
end

puts "🌱 creating users..."
User.create(name: "anonymous", id:1)
20.times do
    User.create(
        name: Faker::Name.name
    )
end



puts "✅ Done seeding!"
