# spec/factories/locations.rb
FactoryBot.define do
    factory :location do
      name { Faker::Address.city }
      latlon { "POINT(#{Faker::Address.longitude} #{Faker::Address.latitude})" }
      region
    end
  end
  