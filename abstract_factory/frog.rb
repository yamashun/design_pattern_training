# カエル
class Frog
  def initialize(name)
    @name = name
  end

  # 食べる(eat)
  def eat
    puts "カエル #{@name} は食事中です"
  end
end