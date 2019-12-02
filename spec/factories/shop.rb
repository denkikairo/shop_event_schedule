# frozen_string_literal: true

FactoryBot.define do
  factory :shop do
    email { 'example@gmail.com' }
    password { 'password' }
    password_confirmation { 'password' }
    name { 'Apple store 銀座' }
    latitude { 35.672256 }
    longitude { 139.76581199999998 }
    address { '日本、〒104-0061 東京都中央区銀座３丁目５−１２ サヱグサビル 本館' }
  end
end
