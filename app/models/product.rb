class Product < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :product_images, dependent: :destroy
  belongs_to :user
  belongs_to :size
  belongs_to :ship_from_location
  belongs_to :product_condition
  belongs_to :derivery_fee_payer
  belongs_to :derivery_day
  belongs_to :category
  has_one :order, dependent: :destroy
  has_one :buyer_user, through: :orders
end
