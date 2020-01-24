# frozen_string_literal: true

class Event < ApplicationRecord
  belongs_to :shop
  validates :title, presence: true
  validates :start_time, presence: true
  has_many :bookmarks, dependent: :destroy
  has_many :players, through: :bookmarks
end
