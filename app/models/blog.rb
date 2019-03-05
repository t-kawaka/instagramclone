class Blog < ApplicationRecord
  default_scope -> { order(created_at: :desc) }
  has_many :favorites, dependent: :destroy
  has_many :favorite_users, through: :favorites, source: :user
  belongs_to :user
  mount_uploader :image, ImageUploader
  validates :content, presence: true
  validates :image, presence: true
end
