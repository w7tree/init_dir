require "#{ENV['HOME']}/init_dir/lib/common.rb"

task_path = "#{ENV['HOME']}/init_dir/task/"
Dir.foreach(task_path) do |f|
  task = "#{task_path}#{f}"
  require(task) if File.ftype(task) == "file"
end
