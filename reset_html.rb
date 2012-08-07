require 'fileutils'

File.delete 'index.html'
FileUtils.rm_rf "css"
FileUtils.rm_rf "js"
FileUtils.rm_rf "img"
