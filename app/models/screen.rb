class Screen < ApplicationRecord
  mount_uploader :picture, PictureUploader
  validates :description, presence: true
  validates :picture, presence: true

  belongs_to :user
end
