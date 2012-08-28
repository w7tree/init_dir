require "#{ENV["HOME"]}/init_dir/lib/common.rb"

namespace :html do
  desc "create basic html directory set"
  task "basic" do
    MakeFile.create("index.html")
    dirs = %w|css js|
    MakeDir.create(dirs)
  end

  desc "test"
  task "test" do
    puts $cd
  end
end
