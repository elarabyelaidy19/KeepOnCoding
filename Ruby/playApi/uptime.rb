# require 'sidekiq'
# require 'faraday'

# Sidekiq.configure_server do |config|
#   config.redis = { db: 1 }
# end

# Sidekiq.configure_client do |config|
#   config.redis = { db: 1 }
# end


# class MyWorker
#   include Sidekiq::Worker

#   def perform(url)
#     conn = Faraday.new(url: url)
#     response = conn.get
#     if response.success? 
#         puts " #{url} works well"
#     else 
#         puts " #{url} is down"
#     end 
#   end
# end

# websites = [
#   "https://www.google.com",
#   "https://www.youtube.com",
#   "https://www.facebook.com",
#   "https://www.amazon.com",
#   "https://www.wikipedia.org",
#   "https://www.twitter.com",
#   "https://www.instagram.com",
#   "https://www.linkedin.com",
#   "https://www.reddit.com",
#   "https://www.pinterest.com", 
#   "http://www.example.com",
#   "http://www.test.com",
#   "http://www.sample.com",
#   "http://www.placeholder.com",
#   "http://www.fakewebsite.com"
# ]


# websites.each do |website| 
#     MyWorker.perform_async(website)
# end 