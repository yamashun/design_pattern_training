# 池の生態系を作る (Abstract Factory)
class OrganismFactory
  def initialize(number_animals, number_plants)
    @animals = []
    # 池の動物を定義する
    number_animals.times do |i|
      animal = new_animal("動物 #{i}")
      @animals << animal
    end

    @plants = []
    # 池の植物を定義する
    number_plants.times do |i|
      plant = new_plant("植物 #{i}")
      @plants << plant
    end
  end

  # 植物についてのオブジェクトを返す
  def get_plants
    @plants
  end

  # 動物についてのオブジェクトを返す
  def get_animals
    @animals
  end
end
