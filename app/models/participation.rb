class Participation < ApplicationRecord
  belongs_to :user
  belongs_to :event
  validates :rating, :numericality => {:only_integer => true, allow_nil: true}
end
