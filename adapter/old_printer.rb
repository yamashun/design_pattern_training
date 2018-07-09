class OldPrinter
  def initialize(string)
    @string = string.dup
  end

  # カッコに囲って文字列を表示する
  def show_with_paren
    puts "(#{@string})"
  end

  # アスタリスクで囲って文字列を表示する
  def show_with_aster
    puts "*#{@string}*"
  end
end