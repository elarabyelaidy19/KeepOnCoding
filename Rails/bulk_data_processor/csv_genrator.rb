require 'faker' 
require 'csv' 


CSV.open('fake_data2.csv', 'w') do |csv| 

    csv << ['name', 'age', 'address', 'email'] 
    1000.times do 
        csv << [Faker::Name.name, Faker::Number.between(from: 18, to: 60), Faker::Address.street_address, Faker::Internet.email ]
    end 
end 

