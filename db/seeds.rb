# Array of sample relationships
RELATIONSHIPS = %W(self parent sibling other)

# Create an initial user to authenticate api requests
User.create!(email:"test@test.com", password:"password", password_confirmation:"password")

# Parsing illnesses csv to seed db
csv_text = File.read(Rails.root.join('lib', 'seeds', 'illnesses.csv'))
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  i = Illness.new
  i.name = row['name']
  i.body = row['body']
  i.save!
end

# Creating random submissions/anecdotes/researches
15.times do |n|
  ip = Faker::Internet.public_ip_v4_address
  Submission.create!(
    illness: Illness.all.sample.name,
    cookie: "thisismycookie#{n}",
    relationship: RELATIONSHIPS.sample,
    ip_address: ip
  )

  Anecdote.create!(
    cookie: "thisismycookie#{n}",
    body: Faker::Hipster.sentence
  )

  Research.create!(
    gender: Faker::Demographic.sex,
    age: Faker::Number.between(18, 90),
    race: Faker::Demographic.race,
    occupation: Faker::Job.title,
    cookie: "thisismycookie#{n}"
  )
end
