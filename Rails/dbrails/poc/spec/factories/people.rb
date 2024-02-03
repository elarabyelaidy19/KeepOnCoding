# spec/factories/people.rb
FactoryBot.define do
    factory :person do
        name { Faker::Name.name }
        role
        location
        salary { Faker::Number.number(digits: 5) }
        trait :with_manager do
            association :manager, factory: :person
        end      
    end
  end
  