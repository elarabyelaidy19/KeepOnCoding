require 'open-uri' 
url = "http://ruby.bastardsbook.com/files/fundamentals/hamlet.txt" 
hamlet = "hamlet.txt"

File.open(hamlet, 'w') do |f| 
    f.puts(URI.open(url).read)
end 


File.open(hamlet, 'r') do |f| 
    f.readlines.each_with_index do |line, idx| 
        puts line if idx % 42 == 41
    end 
end 