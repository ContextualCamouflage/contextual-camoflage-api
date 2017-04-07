names = %w(ADHD Anxiety Autism Schizophrenia Depression Bipolar Dementia OCD PTSD)
FactoryGirl.define do
  factory :submission do
    cookie { Faker::Bitcoin.address }
    illness { names.sample }
    ip_address { Faker::Internet.public_ip_v4_address }
    relationship { %w(self sibling parent other).sample }
  end
end
