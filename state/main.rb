require './state.rb'
require './day_state.rb'
require './night_state.rb'
require './state_frame.rb'

frame = StateFrame.new

frame.set_clock(23)
frame.push_button('use')
frame.push_button('alarm')
frame.push_button('phone')

frame.set_clock(11)
frame.push_button('use')
frame.push_button('alarm')
frame.push_button('phone')

frame.set_clock(20)
frame.push_button('use')
frame.push_button('alarm')
frame.push_button('phone')