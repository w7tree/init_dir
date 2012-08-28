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
  "html5" => Base_html_web.create_html,
  "help" => help()
}

