# spec/factories/regions.rb
FactoryBot.define do
    factory :region do
      name { Faker::Address.state }
    end
  end
  