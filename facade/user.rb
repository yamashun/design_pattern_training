class User
  def call_generate_family_class(parent_name,child_names,has_test_class)
    class_generator = FamilyClassGenerator.new
    class_generator.generate_code(parent_name,child_names,has_test_class)
  end
end