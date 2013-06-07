require 'devil'

class Bildgalleri


def funktiontest

pic = []

files = Dir.glob('storabilder/*{.jpg,.png}') 

files = files.sort
files.each do |base|
pic << File.basename(base)
end

puts pic

pic.each do |file|

Dir.chdir('./storabilder')
Devil.with_image(file) do |img|
    img.thumbnail2(150)
    img.save("thumbnail_#{file}") 

end
 Dir.chdir("..")
end

Dir.chdir('./storabilder')
 storbild = Dir['*{.jpg,.png}']
 thumbs = Dir['thumbnail_*{.jpg,.png}'] 

 fileHtml = File.new("galleri.html", "w+")
 fileHtml.puts "<HTML><BODY BGCOLOR='gray'>"
 
 storbild.each do |storbild|
  thumbs.each do |thumbs|
 
   fileHtml.puts  "<a href='#{storbild}'><img src='#{thumbs}'></a>"
end

  fileHtml.puts "</BODY></HTML>"
  fileHtml.close()
  system("start galleri.html")
end
end
end

run = Bildgalleri.new
run.funktiontest



