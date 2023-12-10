
require 'rest-client' 

wiki_url = "http://en.wikipedia.org/" 
wiki_file = "wiki_local.html" 
File.open(wiki_file, 'w') do |f| 
	f.puts(RestClient.get(wiki_url))
end 
