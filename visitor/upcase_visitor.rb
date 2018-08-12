class UpcaseVisitor < Visitor
  def visit_file(entry)
    print entry.prints.upcase + "\n"
  end

  def visit_directory(entry)
    print entry.prints.upcase + "\n"
    entry.members.each do |member|
      member.accept self
    end
  end
end
