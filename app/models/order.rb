class Order < ApplicationRecord
  belongs_to :buyer_user, class_name: "user", foreign_key: "buyer_user_id"
  belongs_to :product
end
