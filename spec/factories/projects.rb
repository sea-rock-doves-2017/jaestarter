FactoryGirl.define do
  factory :project do
    title Faker::Lorem.words.join(' ').capitalize
    description Faker::Lorem.paragraphs.join("\n")
    amount_donated 1
    goal_amount 1
    end_date Faker::Date.forward(3)
  end
end
