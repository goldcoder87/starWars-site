class PlanetsController < ApplicationController

  def index
    @planet = Planet.all
  end

  def show
    @planet = Swapi.get_planet(planet_id) 
  end
end
