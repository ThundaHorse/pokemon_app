class AddShinyToPokemon < ActiveRecord::Migration[5.2]
  def change
    add_column :pokemons, :shiny_egg, :boolean, default: false
    add_column :pokemons, :shiny_evolution, :boolean, default: false
    add_column :pokemons, :shiny_raid, :boolean, default: false
    add_column :pokemons, :shiny_wild, :boolean, default: false
  end
end
