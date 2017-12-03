FactoryBot.define do
  factory :category do
    description Faker::Commerce.department
  end
end
