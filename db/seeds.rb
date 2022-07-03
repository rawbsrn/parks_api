Park.destroy_all

park_id_array = []

5.times do |index|
  Park.create!(name: [Faker::Fantasy::Tolkien.location,  Faker::JapaneseMedia::OnePiece.island,Faker::JapaneseMedia::DragonBall.planet,Faker::Space.moon,Faker::Space.constellation,Faker::Mountain.name].sample, nearest_town: [Faker::Books::Lovecraft.location,Faker::Books::Dune.city,Faker::Games::Witcher.location, Faker::Games::WarhammerFantasy.location,Faker::JapaneseMedia::OnePiece.location,Faker::Nation.capital_city,Faker::WorldCup.city].sample, state: Faker::Address.state, area: Faker::Number.between(from: 1, to: 142069), designated: Faker::Date.between(from: '1872-03-01', to: Date.today))
      park_id_array.push(Park.last.id)                  
end

p "Created #{Park.count} parks"

p park_id_array