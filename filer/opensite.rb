

# fileHtml.puts "<HTML><BODY BGCOLOR='grey'>"
# fileHtml.puts "This is a site with galleries."
# fileHtml.puts "</BODY></HTML>"

# fileHtml = File.new("galleri.html", "w+")
# fileHtml.close()
# system("start galleri.html")

 fileHtml = File.new("galleri.html", "w+")
 fileHtml.puts "<HTML><BODY BGCOLOR='gray'>"

 # fileHtml.puts "<a href='thumbnails/Thumbnail_*'></a>"
 fileHtml.puts "<img src='thumbnails/thumbnail_*'>"
 # fileHtml.puts "<img src='thumbnails/thumbnail_***.jpg'>"
 fileHtml.puts "<CENTER>Heavy</CENTER><br>"
 fileHtml.puts "</BODY></HTML>"	
 fileHtml.close()
 system("start galleri.html")


#  <a href="sunset.gif">
#   <img src="thmb_sunset.gif" />
# </a>