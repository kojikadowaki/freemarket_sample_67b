class Product < ApplicationRecord
  belongs_to :user
  belongs_to :size, optional: true
  belongs_to :category
  has_one :order, dependent: :destroy
  has_one :buyer_user, through: :orders
  has_many :comments, dependent: :destroy
  has_many :product_images
  accepts_nested_attributes_for :product_images, allow_destroy: true
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :ship_from_location
  belongs_to_active_hash :product_condition
  belongs_to_active_hash :derivery_fee_payer
  belongs_to_active_hash :derivery_day
  belongs_to_active_hash :derivery_method
  belongs_to_active_hash :product_status

  validates :product_images, presence: true, length: {manimum: 1, maximum: 10}
  validates :name, presence: true, length: { maximum: 40 }
  validates :description, presence: true, length: { maximum: 1000 }
  validates :price,  presence: true, numericality:{ greater_than_or_equal_to: 300, less_than: 9999999 }
  validates :ship_from_location_id, :product_condition_id, :derivery_fee_payer_id, 
  :derivery_day_id, :derivery_method_id, :category, :user_id, presence: true
end
