10.times do
  Shop.create!(email:  Faker::Internet.email,
              password:               "password",
              password_confirmation:  "password",
              name: Faker::Name.name,
              latitude: Faker::Address.latitude,
              longitude: Faker::Address.longitude,
              address: Faker::Address.city
        )
end
