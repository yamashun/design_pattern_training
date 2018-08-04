require './sugar_water.rb'
require './salt_water.rb'
require './water_with_material_builder.rb'
require './director.rb'

builder = WaterWithMaterialBuilder.new(SugarWater)
director = Director.new(builder)
director.cook

p builder.result


builder = WaterWithMaterialBuilder.new(SaltWater)
director = Director.new(builder)
director.cook

p builder.result