module Base_html_web
  def create_html
    data = File.read("test.html")
    File.open("index.html","w+") do |io|
      io.puts data
    end
  end
  module_function :create_html
end

def help
  data = File.read("help.md")
  puts data
end

commands = {
  "html5" => Base_html_web.create_html(),
  "help" => help(),
}

args = ARGV
args.each do |arg|
  if commands.has_key?(arg)
    commands.each do |key,value|
      value if arg == key
    end
  else
    puts "init_html: '#{arg}' is not a init_html command."
  end
end
