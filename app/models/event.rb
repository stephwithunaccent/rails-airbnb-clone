class Event < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
  belongs_to :user
  has_many :participations, dependent: :destroy

  has_attachments :photo
  validates :title, :address, :description, :start_at, presence: true
end
