FactoryBot.define do
  factory :channel do
    name { Faker::Name.name }
    description { Faker::Lorem.word }
  end
end
