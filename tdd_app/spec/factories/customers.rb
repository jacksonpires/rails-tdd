FactoryBot.define do
  factory :customer do
    name { Faker::Name.name }
    email { Faker::Internet.email }
    phone { Faker::PhoneNumber.phone_number }
    smoker { ['S','N'].sample }
    avatar { "#{Rails.root}/spec/fixtures/avatar.png" }
  end
end
