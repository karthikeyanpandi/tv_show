FactoryBot.define do
  factory :tv_show do
    name { Faker::Name.name }
    description { Faker::Lorem.word }
  end
end
