class ParentClassGenerator < ClassGenerator
  def generate_code(class_name)
    code =<<"EOS"
class #{class_name}

end
EOS
    return code
  end
end