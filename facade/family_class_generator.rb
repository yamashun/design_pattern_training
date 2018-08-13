class FamilyClassGenerator
  def generate_code(parent_name,child_names,has_test_class)
    parent_class_generator = ParentClassGenerator.new
    child_class_generator = ChildClassGenerator.new
    test_class_generator = TestClassGenerator.new
    
    parent_class_generator.generate_class(parent_name,nil,false)
    test_class_generator.generate_class("Test#{parent_name}",nil,false) if has_test_class
    child_names.each{|child|
      child_class_generator.generate_class(child,parent_name,true)
      test_class_generator.generate_class("Test#{child}",nil,false) if has_test_class
    }
  end
end
