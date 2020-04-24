class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :profile,          dependent: :destroy
  has_one :shipping_address, dependent: :destroy
  has_many :comments
  has_many :orders, class_name: "Order", foreign_key: "buyer_user_id"
  has_many :products, through: :ordres
  validates :nickname,
            presence: true,
            length: { maximum: 10 }
end
