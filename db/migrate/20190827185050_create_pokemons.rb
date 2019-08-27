class CreatePokemons < ActiveRecord::Migration[5.2]
  def change
    create_table :pokemons do |t|
      t.integer :pokemon_id
      t.text :name
      t.integer :base_attack, default: 0
      t.integer :base_defense, default: 0
      t.integer :base_stamina, default: 0

      t.integer :candies_to_evolve
      t.integer :distance_for_candy, default: 0

      t.integer :max_cp, default: 0
      
      t.integer :attack_probability, default: 0
      t.integer :base_capture_rate, defualt: 0
      t.integer :base_flee_rate, default: 0
      t.integer :dodge_probability, defualt: 0
      t.integer :max_action_frequency, default: 0
      t.integer :min_action_frequency, default: 0
      t.timestamps
    end
  end
end
