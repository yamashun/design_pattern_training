require './simple_writer.rb'
require './writer_decorator.rb'
require './numbering_writer.rb'
require './timestamping_writer.rb'

# writer = SimpleWriter.new('sample1.txt')
# writer.write_line('飾り気のない一行')
# writer.close

f = NumberingWriter.new(SimpleWriter.new("file1.txt"))
f.write_line("Hello out there")
f.close
# file1.txtに以下の内容が出力される
#1 : Hello world

f = TimestampingWriter.new(SimpleWriter.new("file2.txt"))
f.write_line("Hello out there")
f.close
# file2.txtに以下の内容が出力される
#2012-12-09 12:55:38 +0900 : Hello out there

f = TimestampingWriter.new(NumberingWriter.new(SimpleWriter.new("file3.txt")))
f.write_line("Hello out there")
f.close