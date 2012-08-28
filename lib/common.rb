$cd = ENV["PWD"] + "/"
class MakeFile
  def self.create(file)
    if File.exists?($cd + file)
      puts "#{file} already exists."
    else
      file_make(file)
    end
  end

  def self.file_read(source)
    path = "#{ENV["HOME"]}/init_dir/source/#{source}"
    if File.exists?(path)
      File.open(path) { |f| @source = f.read }
      return true
    else
      puts "#{path} is not found"
      return false
    end
  end

  def self.file_make(file)
    if file_read(file)
      File.write($cd + file,@source)
      puts "create #{file}"
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
      puts "create #{dir}/"
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
