require 'rails_helper' 

RSpec.describe 'Status request spec' do 
    describe 'GET /index ' do 
        it 'resturns status message' do  
            get('/status') 
            parsed_response = JSON.parse(response.body) 
            expect(parsed_response['status']).to eql("ok") 
            expect(response.status).to eql(200)
        end 
    end 
end  