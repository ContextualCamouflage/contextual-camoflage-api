names = %w(ADHD Anxiety Autism Schizophrenia Depression Bipolar Dementia OCD PTSD)
FactoryGirl.define do
  factory :illness do
    name { names.sample }
    body { Faker::Hipster.paragraph }
  end
end
