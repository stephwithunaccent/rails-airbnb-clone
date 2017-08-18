class Participation < ApplicationRecord
  belongs_to :user
  belongs_to :event
  validates :rating, :numericality => {:only_integer => true, allow_nil: true}

  scope :upcoming, -> { joins(:event).where("events.start_at > ?", Time.now) }
  scope :past,     -> { joins(:event).where("events.start_at < ?", Time.now) }
end
