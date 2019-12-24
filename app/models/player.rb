class Player < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookmarks, dependent: :destroy
  has_many :bookmark_events, through: :bookmarks, source: :event

  def like(event)
    bookmarks.create(event_id: event.id)
  end

  def unlike(event)
    bookmarks.find_by(event_id: event.id).destroy
  end

  def bookmark_event?(event)
    bookmark_events.include?(event)
  end
end
