class ChildClassGenerator < ClassGenerator
  def generate_code(class_name,parent_name)
    snake_file_name = StringUtil.to_snake_case parent_name
    code =<<"EOS"
require_relative './#{snake_file_name}'
class #{class_name} < #{parent_name}

end
EOS
    return code
  end
end