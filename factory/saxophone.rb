# サックス (Product)
class Saxophone
  def initialize(name)
    @name = name
  end

  def play
    puts "#{@name} は音を奏でています"
  end
end