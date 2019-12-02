FactoryBot.define do
  factory :shop do
    email { 'example@gmail.com' }
    password { "password" }
    password_confirmation { "password" }
    # name {'夢屋'}
    # latitude {35.7026}
    # longitude {139.771}
    # address {'日本、〒101-0021 東京都千代田区外神田３丁目８−5-2F イサミヤ第２ビル'}
  end
end
