class Directory < Entry
  def initialize(name)
    super(name)
    @entries = []
  end

  def add(entry)
    @entries.push(entry)
  end

  def prints
    @name
  end

  def members
    @entries
  end

  def accept(visitor)
    visitor.visit(self)
  end
end

