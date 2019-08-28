class Api::PokemonController < ApplicationController
  before_action :authenticate_user
  
  def index 
    pokemons = Pokemon.all
    @pokemons = pokemons.sort_by { |poke| poke.pokemon_id }
    render 'index.json.jbuilder'
  end 

  def show 
    @pokemon = Pokemon.find_by(id: params[:id])
    render 'show.json.jbuilder'
  end 
end
