FactoryBot.define do
  factory :shop do
    email { 'example@example.com' }
    password { 'password' }
    password_confirmation { 'password' }
    name { '株式会社スタートアップテクノロジー' }
    latitude { 35.661731 }
    longitude { 139.69747600000005 }
    address { '日本、〒150-0042 東京都渋谷区宇田川町３６ 宇田川町36-6 ワールド宇田川ビル 9F A号' }
  end
end
