class User < ApplicationRecord
  has_many :events, dependent: :destroy
  validates :name, presence: true, uniqueness: true
  validates :sex, presence: true
end
