require 'devil'

# class Pictures
hej = []

files = Dir.glob('storabilder/*') 
files = files.map { |file| [file.count("/"), file] }
files = files.sort.map { |file| file[1] }
files.each do |base|
hej << File.basename(base)
end

puts hej
hej.each do |file|

Dir.chdir('./storabilder')
puts Dir.getwd
Devil.with_image(file) do |img|
    img.thumbnail2(150)
    img.save("../thumbnails/Thumbnail_#{file}")
end
Dir.chdir("..")
puts Dir.getwd
end


# Dir.foreach ("storabilder.") do |filer|
# 	puts filer
# end
# Dir.glob("*.{jpg,png}") do |filer|
# 	puts filer
# end	