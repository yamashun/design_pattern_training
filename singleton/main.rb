require './singleton_object.rb'

obj1 = SingletonObject.instance
obj1.counter += 1
puts(obj1.counter)

obj2 = SingletonObject.instance
obj2.counter += 1
puts(obj2.counter)