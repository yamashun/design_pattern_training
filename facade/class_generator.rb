class ClassGenerator
  NOT_OVERRRIDE = 'not override error'

  def generate_class(class_name,parent_name,has_parent)
    if has_parent
      code = generate_code(class_name,parent_name)
    else
      code = generate_code(class_name)
    end
    
    output_class_file(class_name,code)
  end
  
  private
  def output_class_file(class_name,code)
    snake_file_name = StringUtil.to_snake_case class_name
    file_path = "./output/#{snake_file_name}.rb"
    folder_path=File::dirname file_path
    Dir::mkdir folder_path unless FileTest.exist?(folder_path)
    File::delete(file_path) if FileTest.exist?(file_path)
    file = open(file_path,"w")
    file.puts code
    file.close
  end

  protected
  def generate_code(class_name,parent_name)
    raise NOT_OVERRRIDE
  end
  
  protected
  def generate_code(class_name)
    raise NOT_OVERRRIDE
  end

end