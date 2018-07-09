require('./adapter.rb')
require('./old_printer.rb')
require('./printer.rb')

p = Printer.new(Adapter.new("Hello"))
p.print_weak

p.print_strong