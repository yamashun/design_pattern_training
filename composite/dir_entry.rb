class DirEntry < Entry
  def initialize(name)
    @title = name
    @directory = Array.new
  end

  def get_name
    @title
  end

  def add(entry)
    @directory.push(entry)
  end

  def ls_entry(prefix)
    puts prefix + '/' + get_name
    @directory.each do |e|
      e.ls_entry(prefix + '/' + @title)
    end
  end

  def remove
    @directory.each do |i|
      i.remove
    end
    puts get_name + 'を削除しました'
  end
end