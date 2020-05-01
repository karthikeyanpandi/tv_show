FactoryBot.define do
  factory :category do
    name { Faker::Name.name }
    description { Faker::Lorem.word }
  end
end
