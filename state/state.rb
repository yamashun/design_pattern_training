class State
  def do_clock(context, hour)
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end

  def do_use(context)
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end

  def do_alarm(context)
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end

  def do_phone(context)
    raise NotImplementedError.new("You must implement #{self.class}##{__method__}")
  end
end