# spec/factories/roles.rb
FactoryBot.define do
    factory :role do
      name { Faker::Job.title }
      billable { Faker::Boolean.boolean }
    end
  end
  