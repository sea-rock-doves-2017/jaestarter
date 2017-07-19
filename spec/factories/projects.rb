FactoryGirl.define do
  factory :project do
    title { Faker::Lorem.words.join(' ').capitalize }
    description { Faker::Lorem.paragraphs.join("\n") }
    amount_donated { rand(1000..10000) }
    goal_amount { rand(10..1000) }
    end_date { Faker::Date.forward(rand(3..30)) }
    creator factory: :user
  end
end
