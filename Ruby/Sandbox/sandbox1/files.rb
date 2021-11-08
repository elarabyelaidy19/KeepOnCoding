 # require './test_file' 
 #require_relative 'test_file' 
 load 'test_file.rb'
puts "hlleoo from files.rb" 
# processed one
#require_relative 'test_file'  
# get processed evry time 
load 'test_file.rb'
puts "hlleoo from files.rb"  
load 'test_file.rb'


$global = 0

require_relative $global == 0 ? 'test_file' : 'oop'  


# http 
require 'net/http' 
uri = URI('https://ruby-doc.org') 
http_request = Net::HTTP.new(uri.host, uri.port) 
http_request.use_ssl = true  
response = http_request.get('/') 
puts response.body.enforce_encoding("ISO-8859-1") 

# Openstruct
require 'ostruct' 
person = OpenStruct.new 
puts person.name = 'elaraby' 
puts person.age = 15 
puts person.age += 10 
