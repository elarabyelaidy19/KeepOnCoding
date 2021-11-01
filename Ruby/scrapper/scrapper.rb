 require 'open-uri' 
require 'net/http'
require 'httparty'
require 'json' 
require 'nokogiri' 
=begin 
# open-uri 
# net/http
url = "https://en.wikipedia.org/wiki/Ruby_(programming_language)" 
uri = URI.parse(url) 
#response = Net::HTTP.get_response(uri) 
# puts response.body 



# HTTParty 
#html = HTTParty.get('https://en.wikipedia.org/wiki/Douglas_Adams') 




#open-uri 
 
html = URI.open("https://en.wikipedia.org/wiki/Douglas_Adams")   

puts response = Nokogiri::HTML(html) 
=end

require 'csv'

html = URI.open("https://en.wikipedia.org/wiki/Douglas_Adams").read
doc = Nokogiri::HTML(html)

data_arr = []
description = doc.css("p").text.split("\n").find{|e| e.length > 0}
picture = doc.css("td a img").find{|picture| picture.attributes["alt"].value.include?("Douglas adams portrait cropped.jpg")}.attributes["src"].value

data_arr.push([description, picture])

CSV.open('data.csv', "w") do |csv|
  csv << data
end
