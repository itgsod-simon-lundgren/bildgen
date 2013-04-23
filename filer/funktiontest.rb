#Letar i filen "storabilder" efter filer
class Pictures

files = Dir.glob('storabilder/*') 
files = files.map { |file| [file.count("/"), file] }
files = files.sort.map { |file| file[1] }
files.each do |file|
  puts file
end
end


# Dir.foreach ("storabilder.") do |filer|
# 	puts filer
# end
# Dir.glob("*.{jpg,png}") do |filer|
# 	puts filer
# end	