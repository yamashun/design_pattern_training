class DowncaseVisitor < Visitor
  def visit_file(entry)
    print entry.prints.downcase + "\n"
  end
  
  def visit_directory(entry)
    print entry.prints.downcase + "\n"
    entry.members.each do |member|
      member.accept self
    end
  end
end