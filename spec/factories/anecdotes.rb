FactoryGirl.define do
  factory :anecdote do
    cookie { Faker::Bitcoin.address }
    body { Faker::Hipster.sentence }
  end
end
