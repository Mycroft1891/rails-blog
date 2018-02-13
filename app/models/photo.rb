class Photo < ApplicationRecord
  validates :description, :image, presence: true
  mount_uploader :image, PhotoUploader
end
