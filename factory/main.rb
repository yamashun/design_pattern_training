require './instrument_factory.rb'
require './saxophone.rb'
require './saxophone_factory.rb'
require './trumpet.rb'
require './trumpet_factory.rb'

factory = SaxophoneFactory.new(3)
saxophones = factory.ship_out
saxophones.each { |saxophone| saxophone.play }

factory = TrumpetFactory.new(2)
trumpets = factory.ship_out
trumpets.each { |trumpet| trumpet.play }
