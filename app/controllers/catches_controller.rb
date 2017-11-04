class CatchesController < ApplicationController
  load_and_authorize_resource

  def index
    @user = current_user
    @catches = @user.catches
  end

  def add_pokemon
    @pokemon = Pokemon.find(params[:pokemon_id])
    @user = current_user
    @user.pokemons << @pokemon
    @user.save
    redirect_to pokemons_path, notice: "El Pokemon ha sido agregado a su lista"
  end

  def level_up
    @catch = Catch.find(params[:id])
    @catch.level = 1 if @catch.level.nil?
    @catch.level+=1
    @catch.save
    redirect_to catches_path, notice: "El Pokemon ha subido un nivel"
  end

end
