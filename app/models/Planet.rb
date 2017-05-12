class Planet < ApplicationRecord
  attr_reader :name, :population, :climate, :films

  def initialize
    @name = name
    @population = population
    @climate = climate
    @films = films
  end

  def name
    Swapi.get_planet["name"]
  end

  def population
    Swapi.get_planet["population"]
  end

  def climate
    Swapi.get_planet["climate"]
  end

  def films
    Swapi.get_planet["films"]
  end

end
