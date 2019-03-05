class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :username, presence: true
  has_many :blogs, dependent: :destroy
  has_many :favorites, dependent: :destroy
  mount_uploader :profile, ProfileUploader
end
