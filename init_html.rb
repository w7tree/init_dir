# coding: utf-8
require File.expand_path( File.dirname(__FILE__) + "/contents/loader.rb" )

# create directory
Dir.mkdir "css" if !Dir.glob("css").any?
Dir.mkdir "js" if !Dir.glob("js").any?
Dir.mkdir "img" if !Dir.glob("img").any?

# create base html file
File.open('index.html','w+') do |io|
  io.puts html
end

# create base reset css file
File.open('css/reset.css','w+') do |io|
  io.puts reset
end

# create blank css file
File.open('css/style.css','w+') do |io|
end

# create blank js file
File.open('js/common.js','w+') do |io|
end
