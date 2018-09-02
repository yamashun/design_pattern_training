class StateFrame
  attr_accessor :state 

  def initialize
    self.state = DayState.instance
  end

  def set_clock(hour)
    state.do_clock(self, hour)
  end

  def change_state(state)
    self.state = state
  end

  def push_button(button_name)
    case button_name
    when 'use'
      state.do_use(self)
    when 'alarm'
      state.do_alarm(self)
    when 'phone'
      state.do_phone(self)
    else
      puts 'unknown action'
    end
  end

  def call_security_center(msg)
    puts "call!! #{msg}"
  end

  def record_log(msg)
    puts "record: #{msg}"
  end
end