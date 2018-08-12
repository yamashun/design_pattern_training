class Visitor
  def initialize
  end

  def visit(entry)
    if entry.class.to_s == "Directory"
      visit_directory(entry)
    else
      visit_file(entry)
    end
  end
end