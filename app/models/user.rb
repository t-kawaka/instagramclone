class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :username, presence: true
  validates :number1, numericality: true, length: { in: 10..11 }, on: :update
  has_many :blogs, dependent: :destroy
  has_many :favorites, dependent: :destroy
  mount_uploader :profile, ProfileUploader
end