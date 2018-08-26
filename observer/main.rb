require './payroll.rb'
require './tax_man.rb'
require './employee.rb'

john = Employee.new('John', 'Senior Vice President', 5000)
john.salary = 6000

john.salary = 7000
