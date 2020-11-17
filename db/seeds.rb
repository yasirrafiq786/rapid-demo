require "faker"

emails = %w(test@test.com john@john.com bob@bob.com jack@jack.com)

puts "Generating Users"
emails.each do |email|
  User.create!(email: email, password: "123abc")
end

puts "Creating Jobs"
10.times do
  Job.create!(pickup_address: Faker::Address.street_address, dropoff_address: Faker::Address.street_address, payment: Faker::Number.decimal(l_digits: 2))
end

puts "Finished"
