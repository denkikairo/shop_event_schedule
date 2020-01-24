class Bookmark < ApplicationRecord
  belongs_to :event
  belongs_to :player
  validates_uniqueness_of :event_id, scope: :player_id
end
