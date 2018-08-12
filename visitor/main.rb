require './entry.rb'
require './directory.rb'
require './composite_file.rb'
require './visitor.rb'
require './upcase_visitor.rb'
require './downcase_visitor.rb'

dir1 = Directory.new("dir1")
dir1.add(CompositeFile.new("a1"))
dir1.add(CompositeFile.new("b2"))
dir1.add(CompositeFile.new("C3"))

up_visitor = UpcaseVisitor.new
dir1.accept up_visitor

down_visitor = DowncaseVisitor.new
dir1.accept down_visitor