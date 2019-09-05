require 'poke-api-v2'
require "http"

# Pokemon.all.each do |poke|
  # poke.update(url: PokeApi.get(pokemon: poke.pokemon_id).sprites.front_default)
  # poke.update(url: "")
# end 

# Pokemon.all.each do |poke|
#   if poke.name.index("-") && !poke.name.index("arceus") && !poke.name.index("cherrim") && !poke.name.index("burmy") && !poke.name.index("gastrodon")
#     reqq = "https://pokeapi.co/api/v2/pokemon/#{poke.id}"
#     req = HTTP.get(reqq)
#     res = req.parse['forms']
#     ress = HTTP.get(res[0]['url']).parse["sprites"]["front_default"]
#     poke.update(url: ress)
#     p ress
#     # p poke.name
#   elsif !poke.name.index("-")
#     poke.update(url: PokeApi.get(pokemon: poke.pokemon_id).sprites.front_default)
#   end 
# end 

# p PokeApi.get(pokemon: "gastrodon").sprites

# Stats
# stats_request = HTTP.get("https://pokemon-go1.p.rapidapi.com/pokemon_stats.json",
#       headers: {
#         "X-RapidAPI-Host" => ENV['HOST'],
#         "X-RapidAPI-Key" => 'ENV["API_KEY"]'
#       }
#     )

# stats = stats_request.parse

# stats.each do |pokemon|
#   if pokemon["form"]
#     Pokemon.create({
#       pokemon_id: pokemon["pokemon_id"],
#       name: pokemon["pokemon_name"] + "/" + pokemon["form"],
#        base_attack: pokemon["base_attack"],
#        base_defense: pokemon["base_defense"],
#        base_stamina: pokemon["base_stamina"]
#     })
#   else 
#     Pokemon.create({
#     pokemon_id: pokemon["pokemon_id"],
#     name: pokemon["pokemon_name"], 
#     base_attack: pokemon["base_attack"],
#     base_defense: pokemon["base_defense"],
#     base_stamina: pokemon["base_stamina"]
#   })
#   end 
# end 

# Distance for candy
# candies_request = HTTP.get("https://pokemon-go1.p.rapidapi.com/pokemon_buddy_distances.json",
#       headers: {
#         "X-RapidAPI-Host" => ENV['HOST'],
#         "X-RapidAPI-Key" => 'ENV["API_KEY"]'
#       }
#     )
# candy = candies_request.parse
# candy.each do |candies| 
#   candies[1].each do |k, v|
#     # puts "#{k}: #{v}"
#     Pokemon.where(pokemon_id: k['pokemon_id']).update(distance_for_candy: k['distance'])
#   end 
# end 


# Candy to evolve
# request = HTTP.get("https://pokemon-go1.p.rapidapi.com/pokemon_candy_to_evolve.json",
#       headers: {
#         "X-RapidAPI-Host" => ENV['HOST'],
#         "X-RapidAPI-Key" => 'ENV["API_KEY"]'
#       }
#     )

# response = request.parse

# response.each do |candies| 
#   candies[1].each do |k, v|
#     # puts "#{k}: #{v}"
#     Pokemon.where(pokemon_id: k['pokemon_id']).update(candies_to_evolve: k['candy_required'])
#   end 
# end 

# Max CP 
# request = HTTP.get("https://pokemon-go1.p.rapidapi.com/pokemon_max_cp.json",
#       headers: {
#         "X-RapidAPI-Host" => ENV['HOST'],
#         "X-RapidAPI-Key" => 'ENV["API_KEY"]'
#       }
#     )

# response = request.parse

# response.each do |pokemon|
#   Pokemon.find_by(pokemon_id: pokemon["pokemon_id"]).update(max_cp: pokemon["max_cp"])
# end 

# Encounter
# encounter = HTTP.get("https://pokemon-go1.p.rapidapi.com/pokemon_encounter_data.json",
#       headers: {
#         "X-RapidAPI-Host" => ENV['HOST'],
#         "X-RapidAPI-Key" => 'ENV["API_KEY"]'
#       }
#     )

# enc = encounter.parse

# enc.each do |poke| 
#   Pokemon.find_by(pokemon_id: poke["pokemon_id"]).update({
#     attack_probability: poke["attack_probability"],
#     base_capture_rate: poke["base_capture_rate"],
#     base_flee_rate: poke["base_flee_rate"],
#     dodge_probability: poke["dodge_probability"],
#     max_action_frequency: poke["max_pokemon_action_frequency"],
#     min_action_frequency: poke["min_pokemon_action_frequency"]
#   })
# end 

# Type 
# types = HTTP.get "https://pokemon-go1.p.rapidapi.com/pokemon_types.json",
#   headers:{
#     "X-RapidAPI-Host" => "pokemon-go1.p.rapidapi.com",
#     "X-RapidAPI-Key" => 'ENV["API_KEY"]'
#   }

#   type = types.parse 

#   type.each do |poke| 
#     Pokemon.find_by(pokemon_id: poke['pokemon_id']).update(pokemon_type: poke['type'].join(", "))
#   end 

# Shiny
# response = HTTP.get "https://pokemon-go1.p.rapidapi.com/shiny_pokemon.json",
#   headers:{
#     "X-RapidAPI-Host" => "pokemon-go1.p.rapidapi.com",
#     "X-RapidAPI-Key" => "ENV['API_KEY']"
#   }

# shiny = response.parse 

# shiny.each do |k, v|
#   Pokemon.find_by(pokemon_id: v["id"]).update({
#     shiny_egg: v["found_egg"],
#     shiny_evolution: v["found_evolution"],
#     shiny_raid: v["found_raid"],
#     shiny_wild: v["found_wild"]
#   })
# end 