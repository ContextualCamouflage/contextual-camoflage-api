FactoryGirl.define do
  factory :submission do
    cookie { Faker::Bitcoin.address }
    illness { illness.name }
    ip { Faker::Internet.public_ip_v4_address }
    relationship { %w(self sibling parent other).sample }
  end
end
