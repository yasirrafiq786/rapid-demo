require "faker"

puts "Destroying everything"
Job.destroy_all
User.destroy_all

emails = %w(test@test.com john@john.com bob@bob.com jack@jack.com)

puts "Generating Users"
emails.each do |email|
  User.create!(email: email, password: "123abc")
end

puts "Creating Jobs"
100.times do
  Job.create!(pickup_address: Faker::Address.full_address, dropoff_address: Faker::Address.full_address, payment: Faker::Number.decimal(l_digits: 2))
end

puts "Finished"
