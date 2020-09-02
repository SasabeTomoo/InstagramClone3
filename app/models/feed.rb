class Feed < ApplicationRecord
  has_many :favorites, dependent: :destroy
  has_many :favorite_users, through: :favorites, source: :user
  belongs_to :user
  validates :image, presence: true
  validates :title, presence: true
  validates :content, presence: true
  mount_uploader :image, ImageUploader
end
