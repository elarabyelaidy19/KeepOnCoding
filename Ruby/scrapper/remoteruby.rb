# require 'mechanize'
# require 'nokogiri'

# # Create a new Mechanize object
# agent = Mechanize.new

# # Load the RubyOnRemote home page
# page = agent.get('https://rubyonremote.com/')

# # Parse the HTML using Nokogiri
# doc = Nokogiri::HTML(page.body)

# # Find the job listings section

# #job-listings
# job_listings = doc.css('#job-listings') 

# # Iterate over each job listing and print the job title and company name
# job_listings.each do |listing|
#     items = listing.css('li') 
#     title = items.css('a').map { |item| item.text.strip }
#     puts title
# end


# # /html/body/main/div[3]/div[1]/ul/li[1]/a
# # //*[@id="job-listings"]/li[1]/a


require 'mechanize'
require 'nokogiri'

# Create a new Mechanize object
agent = Mechanize.new

# Load the RubyOnRemote home page
page = agent.get('https://rubyonremote.com/')

# Parse the HTML using Nokogiri
doc = Nokogiri::HTML(page.body)

# Find the job listings section by ID
links = doc.css('a')

hrefs = links.map { |link| link['href'] }
puts hrefs