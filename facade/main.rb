require './string_util.rb'
require './user.rb'
require './class_generator.rb'
require './parent_class_generator.rb'
require './child_class_generator.rb'
require './test_class_generator.rb'
require './family_class_generator.rb'

user = User.new
child_classes = ["ChildFirst","ChildSecond","ChildThird"]
user.call_generate_family_class("Parent",child_classes,true)
other_child_classes = ["OtherChildFirst","OtherChildSecond","OtherChildThird"]
user.call_generate_family_class("OtherParent",other_child_classes,false)

puts `ls -ltr ./output | sort`
puts "--------------------------------"
puts `cat ./output/parent.rb`
puts "--------------------------------"
puts `cat ./output/test_parent.rb`
puts "--------------------------------"
puts `cat ./output/child_first.rb`
puts "--------------------------------"
puts `cat ./output/test_child_first.rb`