require 'nokogiri'
require 'httparty'
require 'pry'
require  'csv'

page = HTTParty.get('https://www.indeed.com/q-Ruby-Developer-jobs.html?vjk=6848984d6fe060f1').body 
parsed_page = Nokogiri::HTML(page) 
pry.start(binding) 

array = parsed_page.css('h2').map(&:text) 
CSV.open('reserved.csv', 'w') {|csv| csv << array } 
