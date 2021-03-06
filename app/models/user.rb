class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :events, dependent: :destroy
  has_many :participations, dependent: :destroy
  validates :name, presence: true, uniqueness: true
  validates :sex, presence: true
  has_attachment :photo
end
