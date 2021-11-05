require 'httparty'
module Api
    class Base 

        attr_accessor :options
        
        def initialize(options)
            @options = options
        end 
         
        def request(type, url, opts = {}) 
            response = HTTParty.send(type, url, opts)  
            parsed_response(response)  
        end

        def parsed_response(response) 
            "#{__method__}"
        end 

    end 
end