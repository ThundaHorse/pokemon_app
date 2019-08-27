require "http"

# Stats
# stats_request = HTTP.get("https://pokemon-go1.p.rapidapi.com/pokemon_stats.json",
#       headers: {
#         "X-RapidAPI-Host" => ENV['HOST'],
#         "X-RapidAPI-Key" => '1d8ded02d0msh64f88ca221e6596p152006jsn5d36c8fb5f3f'
#       }
#     )

# stats = stats_request.parse

# stats.each do |pokemon|
#   Pokemon.create({
#     pokemon_id: pokemon["pokemon_id"],
#     name: pokemon["pokemon_name"], 
#     base_attack: pokemon["base_attack"],
#     base_defense: pokemon["base_defense"],
#     base_stamina: pokemon["base_stamina"]
#   })
# end 

# Distance for candy
# candies_request = HTTP.get("https://pokemon-go1.p.rapidapi.com/pokemon_buddy_distances.json",
#       headers: {
#         "X-RapidAPI-Host" => ENV['HOST'],
#         "X-RapidAPI-Key" => '1d8ded02d0msh64f88ca221e6596p152006jsn5d36c8fb5f3f'
#       }
#     )
# candy = candies_request.parse
# candy.each do |candies| 
#   candies[1].each do |k, v|
#     Pokemon.find_by(pokemon_id: k['pokemon_id']).update(distance_for_candy: k['distance'])
#   end 
# end 


# Candy to evolve
# request = HTTP.get("https://pokemon-go1.p.rapidapi.com/pokemon_candy_to_evolve.json",
#       headers: {
#         "X-RapidAPI-Host" => ENV['HOST'],
#         "X-RapidAPI-Key" => ENV["API_KEY"]
#       }
#     )

# response = request.parse

# response.each do |candies| 
#   candies[1].each do |k, v|
#     Pokemon.find_by(pokemon_id: k['pokemon_id']).update(distance_for_candy: k['distance'])
#   end 
# end 

# Max CP 
# request = HTTP.get("https://pokemon-go1.p.rapidapi.com/pokemon_max_cp.json",
#       headers: {
#         "X-RapidAPI-Host" => ENV['HOST'],
#         "X-RapidAPI-Key" => '1d8ded02d0msh64f88ca221e6596p152006jsn5d36c8fb5f3f'
#       }
#     )

# response = request.parse

# response.each do |pokemon|
#   Pokemon.find_by(pokemon_id: pokemon["pokemon_id"]).update(max_cp: pokemon["max_cp"])
# end 

# encounter = HTTP.get("https://pokemon-go1.p.rapidapi.com/pokemon_encounter_data.json",
#       headers: {
#         "X-RapidAPI-Host" => ENV['HOST'],
#         "X-RapidAPI-Key" => '1d8ded02d0msh64f88ca221e6596p152006jsn5d36c8fb5f3f'
#       }
#     )

# enc = encounter.parse

# enc.each do |poke| 
#   Pokemon.find_by(name: poke["pokemon_name"]).update({
#     attack_probability: poke["attack_probability"],
#     base_capture_rate: poke["base_capture_rate"],
#     base_flee_rate: poke["base_flee_rate"],
#     dodge_probability: poke["dodge_probability"],
#     max_action_frequency: poke["max_pokemon_action_frequency"],
#     min_action_frequency: poke["min_pokemon_action_frequency"]
#   })
# end 
