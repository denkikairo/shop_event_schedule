# frozen_string_literal: true

FactoryBot.define do
  factory :event do
    title { 'EventTitle' }
    start_time { '2019-12-04 15:06:48' }
    description { 'EventDescription' }
  end
end
