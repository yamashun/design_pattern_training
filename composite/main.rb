require './entry.rb'
require './file_entry.rb'
require './dir_entry.rb'

root = DirEntry.new('root')
tmp = DirEntry.new('tmp')
tmp.add(FileEntry.new('conf'))
tmp.add(FileEntry.new('data'))
root.add(tmp)

root.ls_entry("")

root.remove