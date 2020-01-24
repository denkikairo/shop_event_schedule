# frozen_string_literal: true

class Event < ApplicationRecord
  belongs_to :shop
  validates :title, presence: true
  validates :start_time, presence: true
end
