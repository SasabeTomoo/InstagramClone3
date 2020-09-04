class Feed < ApplicationRecord
  has_many :favorites, dependent: :destroy
  has_many :favorite_users, through: :favorites, source: :user
  belongs_to :user
  validates :image, presence: true
<<<<<<< HEAD
  validates :title, presence: true
  validates :content, presence: true
=======
  belongs_to :user
>>>>>>> parent of 1533ebc... 投稿のタイトル・内容にもバリデーションを加えた（presence:true）
  mount_uploader :image, ImageUploader
end
