json.id pokemon.id
json.pokemon_id pokemon.pokemon_id 
json.url pokemon.url
json.name pokemon.name 
json.stats do 
  json.max_cp pokemon.max_cp
  json.base_attack pokemon.base_attack
  json.base_defense pokemon.base_defense
  json.base_stamina pokemon.base_stamina 
end 

json.candies_to_evolve pokemon.candies_to_evolve
json.distance_for_candy pokemon.distance_for_candy 

json.encounter_stats do 
  json.attack_chance pokemon.attack_probability
  json.capture_rate pokemon.base_capture_rate 
  json.flee_rate pokemon.base_flee_rate
  json.dodge_chance pokemon.dodge_probability
  json.max_action_frequency pokemon.max_action_frequency
  json.min_action_frequency pokemon.min_action_frequency
end 
