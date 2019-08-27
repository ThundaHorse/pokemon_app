class Api::PokemonController < ApplicationController
  def index 
    @pokemons = Pokemon.all

    render 'index.json.jbuilder'
  end 

  def show 
    @pokemon = Pokemon.find_by(pokemon_id: params[:id])
    render 'show.json.jbuilder'
  end 
end
