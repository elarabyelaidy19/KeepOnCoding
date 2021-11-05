module Api 
    class Coinpaprika < Base 
            def request  
                super(:get, url) 
            end
        
            def parsed_response(response)
                response.first.dig('close').to_f
            end 

            def url  
                "https://api.coinpaprika.com/v1/coins/#{@options[:symbol]}-#{@options[:name]}/ohlcv/today"
            end 
    end 
end 