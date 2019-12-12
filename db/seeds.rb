# frozen_string_literal: true

10.times do
  Shop.create!(email: Faker::Internet.email,
               password: 'password',
               password_confirmation: 'password',
               name: Faker::Name.name,
               latitude: Faker::Address.latitude,
               longitude: Faker::Address.longitude,
               address: Faker::Address.city)
end

10.times do
  Event.create!(title: Faker::Name.first_name,
               start_time: Faker::Time.between(from: DateTime.now, to: DateTime.now + 30, format: :default),
               description: Faker::Lorem.sentence(word_count: 5),
               shop_id: Shop.all.sample.id
               )
end
