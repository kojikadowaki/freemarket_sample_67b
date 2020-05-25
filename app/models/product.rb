# == Schema Information
#
# Table name: products
#
#  id                    :integer          not null, primary key
#  brand                 :string(255)
#  description           :text(65535)      not null
#  name                  :string(255)      not null
#  price                 :integer          not null
#  status                :string(255)      default("出品中")
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  category_id           :integer          not null
#  derivery_day_id       :integer          not null
#  derivery_fee_payer_id :integer          not null
#  derivery_method_id    :integer          not null
#  product_condition_id  :integer          not null
#  product_status_id     :integer          not null
#  ship_from_location_id :integer          not null
#  size_id               :integer
#  user_id               :integer          not null
#
# Indexes
#
#  index_products_on_category_id  (category_id)
#  index_products_on_size_id      (size_id)
#  index_products_on_user_id      (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (category_id => categories.id)
#  fk_rails_...  (size_id => sizes.id)
#  fk_rails_...  (user_id => users.id)
#
class Product < ApplicationRecord
  belongs_to :user
  belongs_to :size, optional: true
  belongs_to :category
  has_one :order, dependent: :destroy
  has_one :buyer_user, through: :orders
  has_many :comments, dependent: :destroy
  has_many :product_images, dependent: :destroy
  accepts_nested_attributes_for :product_images, allow_destroy: true
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :ship_from_location
  belongs_to_active_hash :product_condition
  belongs_to_active_hash :derivery_fee_payer
  belongs_to_active_hash :derivery_day
  belongs_to_active_hash :derivery_method
  belongs_to_active_hash :product_status

  validates :product_images, presence: true, length: { minimum: 1, maximum: 10 }
  validates :name, presence: true, length: { maximum: 40 }
  validates :description, presence: true, length: { maximum: 1000 }
  validates :price,  presence: true, numericality:{ greater_than_or_equal_to: 300, less_than: 9999999 }
  validates :ship_from_location_id, :product_condition_id, :derivery_fee_payer_id, 
  :derivery_day_id, :derivery_method_id, :category, :user_id, presence: true

  def self.search(search)
    if search
      Product.where('name collate utf8_unicode_ci LIKE ?', "%#{search}%")
    else
      Product.all
    end
  end
end