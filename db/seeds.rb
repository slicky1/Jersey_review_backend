# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Country.create!(name: 'England', img_source: 'https://upload.wikimedia.org/wikipedia/en/thumb/b/be/Flag_of_England.svg/1200px-Flag_of_England.svg.png')
Country.create!(name: 'Spain', img_source: 'https://a.espncdn.com/combiner/i?img=%2Fi%2Fteamlogos%2Fsoccer%2F500%2F164.png')
Country.create!(name: 'Germany', img_source: 'https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Flag_of_Germany.svg/1200px-Flag_of_Germany.svg.png')
Country.create!(name: 'France', img_source: 'https://upload.wikimedia.org/wikipedia/en/thumb/c/c3/Flag_of_France.svg/1200px-Flag_of_France.svg.png')
Country.create!(name: 'Italy', img_source: 'https://upload.wikimedia.org/wikipedia/en/thumb/0/03/Flag_of_Italy.svg/255px-Flag_of_Italy.svg.png')


puts "Country seeded"

Team.create!(name: 'Manchester United', img_source: 'https://upload.wikimedia.org/wikipedia/en/thumb/7/7a/Manchester_United_FC_crest.svg/800px-Manchester_United_FC_crest.svg.png', country_id: 1)
Team.create!(name: 'Chelsea', img_source: 'https://upload.wikimedia.org/wikipedia/en/thumb/c/cc/Chelsea_FC.svg/1200px-Chelsea_FC.svg.png', country_id: 1)
Team.create!(name: 'Arsenal', img_source: 'https://upload.wikimedia.org/wikipedia/en/thumb/5/53/Arsenal_FC.svg/1200px-Arsenal_FC.svg.png', country_id: 1)
Team.create!(name: 'Real Madrid', img_source: 'https://img.haarets.co.il/img/1.5633935/1018316866.jpg', country_id: 2)
Team.create!(name: 'Barcelona', img_source: 'https://upload.wikimedia.org/wikipedia/en/thumb/4/47/FC_Barcelona_%28crest%29.svg/1200px-FC_Barcelona_%28crest%29.svg.png', country_id: 2)
Team.create!(name: 'Atletico Madrid', img_source: 'https://1000logos.net/wp-content/uploads/2020/09/Atletico-Madrid-1917.jpg', country_id: 2)
Team.create!(name: 'Dortmund', img_source: 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/Borussia_Dortmund_logo.svg/1200px-Borussia_Dortmund_logo.svg.png', country_id: 3)
Team.create!(name: 'Bayern Munich', img_source: 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/FC_Bayern_M%C3%BCnchen_logo_%282017%29.svg/1200px-FC_Bayern_M%C3%BCnchen_logo_%282017%29.svg.png', country_id: 3)
Team.create!(name: 'Wolfsburg', img_source: 'https://upload.wikimedia.org/wikipedia/en/thumb/5/59/Bayer_04_Leverkusen_logo.svg/1200px-Bayer_04_Leverkusen_logo.svg.png', country_id: 3)
Team.create!(name: 'Monterrey', img_source: 'https://upload.wikimedia.org/wikipedia/en/thumb/c/c6/Olympique_Lyonnais.svg/1200px-Olympique_Lyonnais.svg.png', country_id: 4)
Team.create!(name: 'Paris Saint Germain', img_source: 'https://upload.wikimedia.org/wikipedia/en/thumb/a/a7/Paris_Saint-Germain_F.C..svg/1200px-Paris_Saint-Germain_F.C..svg.png', country_id: 4)
Team.create!(name: 'Marseille', img_source: 'https://logos-world.net/wp-content/uploads/2020/11/Olympique-de-Marseille-Emblem.png', country_id: 4)
Team.create!(name: 'Roma', img_source: 'https://upload.wikimedia.org/wikipedia/en/thumb/f/f7/AS_Roma_logo_%282017%29.svg/1200px-AS_Roma_logo_%282017%29.svg.png', country_id: 5)
Team.create!(name: 'Inter Milan', img_source: 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/89/FC_Internazionale_Milano_2014.svg/2048px-FC_Internazionale_Milano_2014.svg.png', country_id: 5)
Team.create!(name: 'AC Milan', img_source: 'https://logos-world.net/wp-content/uploads/2020/11/Milan-Logo-1997-1998.png', country_id: 5)

puts "Team Seeded"