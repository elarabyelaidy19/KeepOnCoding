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


# db/seeds.rb
require 'factory_bot'

# FactoryBot.find_definitions

before = Time.now 
# # Create regions
 regions = Region.all 

# # Create locations associated with regions
locations = Location.all # # Create roles
roles = Role.all
# Create people associated with roles, locations, and managers 
# people = FactoryBot.create_list(:person, 100, role: roles.sample, location: locations.sample)
people2 = FactoryBot.create_list(:person, 20000000, :with_manager, role: roles.sample, location: locations.sample)

puts 'Seed data has been created!'
after = Time.now
puts "It took #{after - before} seconds"