require "./lib/base" 
require "./lib/coinbase" 
require "./lib/coingecko" 
require "./lib/coinpaprika" 
require "./lib/coincap" 
require "./lib/cryptocompare"

module Api 
    class Wrapper < Base
        apis = %w[ coinbase coingecko coinpaprika coincap cryptocompare ]   
        
        apis.each do |api| 
            define_method(api.to_sym) do 
                klass = klassify(api)
                Object.const_get("Api::#{klass}").new(@options).request
            end    
        end

        def klassify(name) 
            name.split("_").collect(&:capitalize).join
        end
    end
end 