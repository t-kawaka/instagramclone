class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :username, presence: true
  validates :Telnumber, numericality: true, length: { in: 9..10 }, on: :update
  has_many :blogs, dependent: :destroy
  has_many :favorites, dependent: :destroy
  mount_uploader :profile, ProfileUploader
end