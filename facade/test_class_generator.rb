class TestClassGenerator < ClassGenerator
  def generate_code(class_name)
    snake_file_name = StringUtil.to_snake_case(class_name.sub('Test',''))
    code =<<"EOS"
require 'test/unit'
require_relative './#{snake_file_name}'
class #{class_name} < Test::Unit::TestCase

end
EOS
    return code
  end
end