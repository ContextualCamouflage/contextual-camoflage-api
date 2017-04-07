FactoryGirl.define do
  factory :research do
    cookie { Faker::Bitcoin.address }
    gender { Faker::Demographic.sex }
    age { Faker::Number.between(18, 90) }
    occupation { Faker::Job.title }
  end
end
