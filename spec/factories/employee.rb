FactoryBot.define do
  factory :employee do
    name { Faker::Name.name }
    email { Faker::Internet.unique.email }
  end
end
