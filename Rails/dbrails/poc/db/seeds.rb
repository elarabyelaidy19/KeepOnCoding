# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# drop database  

# ActiveRecord::Tasks::DatabaseTasks.drop_current
# puts 'Dropped the existing database'

# # Create a new database
# ActiveRecord::Tasks::DatabaseTasks.create_current
# puts 'Created a new database' 

# ActiveRecord::Tasks::DatabaseTasks.load_schema_current(:ruby, :sql, :sql)
# puts 'Migrated the database' 


roles = ['developer', 'designer', 'markering']

10.times do 
    Region.create!(name: Faker::Address.country)
end
10.times do 
    Role.create!(name: roles.sample, billable: [true, false].sample)
end 

10.times do 
    Location.create!(name: Faker::Address.city, region: Region.all.sample)
end

10.times do 
    person = Person.create!(name: Faker::Name.name,manager: Person.new, role: Role.all.sample, salary: rand(1000..10000), location: Location.all.sample)
    person.save(validate: false)
end  


