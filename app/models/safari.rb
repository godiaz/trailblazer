class Safari < ApplicationRecord
  has_many :safari_attraction
  has_many :attractions, through: :safari_attraction
  mount_uploader :banner_image, PhotoUploader
  belongs_to :user
end
