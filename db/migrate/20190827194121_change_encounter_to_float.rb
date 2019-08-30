class ChangeEncounterToFloat < ActiveRecord::Migration[5.2]
  def change
    change_column :pokemons, :attack_probability, :float
    change_column :pokemons, :base_capture_rate, :float
    change_column :pokemons, :base_flee_rate, :float
    change_column :pokemons, :dodge_probability, :float
    change_column :pokemons, :max_action_frequency, :float
    change_column :pokemons, :min_action_frequency, :float
  end
end
