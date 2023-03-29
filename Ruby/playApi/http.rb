require 'faraday' 
require 'json' 

# response = Faraday.get('http://httpbingo.org') 
# puts response.status
# response.headers['Authorization'] = 'secrete' 
# puts response.headers['Authorization']

# # puts response.body



connection = Faraday.new( 
    url: 'http://httpbingo.org', 
    params: {param: '1'},
    headers: {'Content-Type' => 'application/json'}
)

response = connection.get( 
    'get', 
    {boom: 'zap'},
    {'User-Agent' => 'myapp'}
)

puts response.body