class AddUrlToPokemon < ActiveRecord::Migration[5.2]
  def change
    add_column :pokemons, :url, :text
  end
end
