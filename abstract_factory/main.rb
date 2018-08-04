require './algae.rb'
require './duck.rb'
require './frog.rb'
require './water_lily.rb'
require './organism_factory.rb'
require './duck_and_water_lily_factory.rb'
require './frog_and_algae_factory.rb'


factory = FrogAndAlgaeFactory.new(4,1)
animals = factory.get_animals
animals.each { |animal| animal.eat }
plants = factory.get_plants
plants.each { |plant| plant.grow }

factory = DuckAndWaterLilyFactory.new(3,2)
animals = factory.get_animals
animals.each { |animal| animal.eat }
plants = factory.get_plants
plants.each { |plant| plant.grow }