class StringUtil
  def self.to_snake_case(str)
    ret = str.gsub(/([A-Z].)/,'_\1').downcase
    ret = ret.slice(1,ret.size)
    return ret
  end
  
  # パスからファイル名を除外した文字列を取得
  def self.get_folder_path(file_path)
    folders = file_path.split('/')
    folders.pop
    
    folder_path = ""
    folders.each {|folder|
      folder_path << folder
      folder_path << "/"
    }
    return folder_path
  end
  
  # ファイル名のみを取得
  def self.get_file_name(file_path)
    folders = file_path.split('/')
    return folders[folders.size-1]
  end
  
  # 拡張子なしファイル名の取得
  def self.get_file_name_without_extension(file_name)
    file_names = file_name.split('.')
    return file_names[0]
  end
end