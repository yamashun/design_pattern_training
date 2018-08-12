class CompositeFile < Entry
  def accept(visitor)
    visitor.visit(self)
  end
end