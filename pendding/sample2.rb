class Base_html_web
  def create
    data = File.read("sample.html")
    File.open("index.html","w+") do |io|
      io.puts data
    end
    puts "create index.html"
  end
end

class Help
  def create
    data = File.read("help.md")
    puts data
  end
end

commands = {
  "html5" => Base_html_web.new,
  "help" => Help.new,
}

args = ARGV
args.each do |arg|
  if commands.has_key?(arg)
    commands.each do |key,value|
      value.create if arg == key
    end
  else
    puts "init_html: '#{arg}' is not a init_html command."
  end
end
