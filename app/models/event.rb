class Event < ApplicationRecord
  belongs_to :user
  has_many :participations
  validates :title, :address, :description, :start_at, presence: true
end
