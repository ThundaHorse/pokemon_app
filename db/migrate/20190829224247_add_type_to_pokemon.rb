class AddTypeToPokemon < ActiveRecord::Migration[5.2]
  def change
    add_column :pokemons, :pokemon_type, :text
  end
end
