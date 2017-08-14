class Event < ApplicationRecord
  belongs_to :user
  has_many :participations, dependent: :destroy
  validates :title, :address, :description, :start_at, presence: true
end
