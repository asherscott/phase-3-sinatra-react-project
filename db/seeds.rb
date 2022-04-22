puts "🌱 Seeding spices..."

# Seed your database here
puts "🌱 creating games..."
    Game.create([
    {
        name: "Elden Ring", 
        genre: "Adventure game", 
        developer: "FromSoftware Inc", 
        platform: "PC", 
        description: "Elden Ring is an action role-playing game developed by FromSoftware and published by Bandai Namco Entertainment. The game was directed by Hidetaka Miyazaki and made in collaboration with fantasy novelist George R. R. Martin, who provided material for the game's setting",
        release: "2022-02-25",
        image:"https://image.api.playstation.com/vulcan/ap/rnd/202110/2000/aGhopp3MHppi7kooGE2Dtt8C.png"
    },
    {
        name: "Pokemon Legends: Arceus", 
        genre: "Adventure game", 
        developer: "Game Freak", 
        platform: "Switch", 
        description: "Pokémon Legends: Arceus is a 2022 action role-playing game developed by Game Freak and published by Nintendo and The Pokémon Company for the Nintendo Switch.",
        release: "2022-01-28",
        image:"https://www.theilluminerdi.com/wp-content/uploads/2021/08/wp9382687-pokemon-legends-arceus-wallpapers.jpg"
    },
    {
        name: "Minecraft", 
        genre: "SandBox", 
        developer: "Mojang Studios", 
        platform: "PC", 
        description: "Minecraft is a sandbox video game developed by Mojang Studios. The game was created by Markus Persson in the Java programming language.",
        release: "2011-11-18",
        image:"https://upload.wikimedia.org/wikipedia/en/5/51/Minecraft_cover.png"
    },
    {
        name: "Stardew Valley", 
        genre: "Role-playing", 
        developer: "Proprietary Engine", 
        platform: "Android", 
        description: "Stardew Valley is a simulation role-playing video game developed by Eric Barone. The game released for Microsoft Windows in February 2016 before being ported to several other computer, console, and mobile platforms.",
        release: "2016-02-26",
        image:"https://assets-prd.ignimgs.com/2021/12/20/stardewvalley-1640044262769.jpg"
    },
    {
        name: "Animal Crossing: New Horizons", 
        genre: "Social simulation", 
        developer: "Nintendo", 
        platform: "Switch", 
        description: "Animal Crossing is a social simulation video game series developed and published by Nintendo. The series was conceptualized and created by Katsuya Eguchi and Hisashi Nogami.",
        release: "2020-03-20",
        image:"https://upload.wikimedia.org/wikipedia/en/1/1f/Animal_Crossing_New_Horizons.jpg"
    },
    {
        name: "Super Smash Bros Ultimate", 
        genre: "Fighting", 
        developer: "Nintendo", 
        platform: "Switch", 
        description: "Super Smash Bros. Ultimate is a 2018 Japanese crossover fighting game developed by Bandai Namco Studios and Sora Ltd. and published by Nintendo for the Nintendo Switch. It is the fifth installment in the Super Smash Bros. series, succeeding Super Smash Bros. for Nintendo 3DS and Wii U.",
        release: "2018-12-07",
        image:"https://assets.nintendo.com/image/upload/c_fill,f_auto,q_auto,w_1200/v1/ncom/en_US/games/switch/s/super-smash-bros-ultimate-switch/hero"
    },
    {
        name: "Raft", 
        genre: "Survival game", 
        developer: "Redbeet Interactive", 
        platform: "PC", 
        description: "Raft is an open world survival video game developed by Swedish developer Redbeet Interactive, and published by Axolot Games. The game was released as an early access title on 23 May 2018 on Steam, after initial release as a free download on indie platform Itch.io.",
        release: "2018-05-23",
        image:"https://pbs.twimg.com/media/FFnVNYtXEAEFJUv?format=jpg&name=large"
    },
    {
        name: "Tiny Tina's Wonderlands", 
        genre: "First-person shooter", 
        developer: "Gearbox Software", 
        platform: "PlayStation 4", 
        description: "Tiny Tina's Wonderlands is an action role-playing first-person shooter video game developed by Gearbox Software and published by 2K Games. It is a spin-off in the Borderlands series and a successor to Borderlands 2: Tiny Tina's Assault on Dragon Keep.",
        release: "2022-03-25",
        image:"https://cdn1.epicgames.com/salesEvent/salesEvent/Daffodil_1P_Awareness_INT_Epic_1200x1600_1200x1600-356dd4965bde4c5dbd1000f9c97ac4b4"
    },
    {
        name: "Among Us", 
        genre: "Social deduction", 
        developer: "InnerSloth LLC", 
        platform: "Xbox One", 
        description: "Among Us is a 2018 online multiplayer social deduction game developed and published by American game studio Innersloth. The game was inspired by the party game Mafia and the science fiction horror film The Thing. ",
        release: "2018-06-15",
        image:"https://logowik.com/content/uploads/images/among-us1873.jpg"
    },
    ])

puts "🌱 creating reviews..."
70.times do 
    Review.create(
        game_id: rand(1..9),
        user_id: rand(2..21),
        rating: rand(1..5),
        comment: Faker::GreekPhilosophers.quote,
        date: Faker::Date.between(from: '2022-04-10', to: '2022-04-25')
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