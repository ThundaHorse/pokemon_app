class AddShinyUrlToPokemon < ActiveRecord::Migration[5.2]
  def change
    add_column :pokemons, :shiny_url, :text, default: ""
  end
end
