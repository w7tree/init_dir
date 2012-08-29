$cd = ENV["PWD"] + "/"
class MakeFile
  def self.create(file,dir="")
    dir = dir + "/" unless dir =~ /\/$/ || dir == ""
    if File.exists?($cd + dir + file)
      puts "#{dir}#{file} already exists."
    else
      file_make(file,dir)
    end
  end

  def self.file_read(source,dir)
    path = "#{ENV["HOME"]}/init_dir/source/#{dir}#{source}"
    if File.exists?(path)
      File.open(path) { |f| @source = f.read }
      return true
    else
      puts "#{source} is not found in '~/init_dir/source/#{dir}'"
      return false
    end
  end

  def self.file_make(file,dir)
    if file_read(file,dir)
      File.write($cd + dir + file,@source)
      puts "create file #{dir}#{file}"
    end
  end

  private_class_method :file_read,:file_make
end

class MakeDir
  def self.create(dirs)
    if dirs.instance_of?(Array)
      dir_array(dirs)
    else
      dir_one(dirs)
    end
  end

  def self.dir_one(dir)
    if File.exists?($cd + dir)
      puts "#{dir}/ already exists"
    else
      puts "create directory #{dir}/"
      Dir.mkdir($cd + dir)
    end
  end

  def self.dir_array(dirs)
    dirs.each do |dir|
      dir_one(dir)
    end
  end

  private_class_method :dir_one,:dir_array
end
