# SaxophoneFactory: サックスを生成する (ConcreteCreator)
class SaxophoneFactory < InstrumentFactory
  def new_instrument(name)
    Saxophone.new(name)
  end
end