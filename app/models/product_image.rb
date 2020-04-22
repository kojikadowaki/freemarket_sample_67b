class ProductImage < ApplicationRecord
  validates :url, presence: true
  mount_uploader :url, ImageUploader
  belongs_to :product, optional: true
end
