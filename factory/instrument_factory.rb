# 楽器工場 (Creator)
class InstrumentFactory
  def initialize(number_instruments)
    @instruments = []
    number_instruments.times do |i|
      instrument = new_instrument("楽器 #{i}")
      @instruments << instrument
    end
  end

  # 楽器を出荷する
  def ship_out
    @tmp = @instruments.dup
    @instruments = []
    @tmp
  end
end