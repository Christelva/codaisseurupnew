FactoryBot.define do
  factory :event do
    name     { Faker::Lorem.words(3).join(' ') }
    description       { Faker::Lorem.sentence(40) }
    location           { Faker::Address.city }
    capacity            true
    includes_food      true
    includes_drinks       true
    starts_at
  ends_at
    price      { Faker::Commerce.price }
    user              { build(:user) }

    trait :active do
      active true
    end

    trait :inactive do
      active false
    end
  end
end
