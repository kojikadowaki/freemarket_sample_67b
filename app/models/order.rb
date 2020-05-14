# == Schema Information
#
# Table name: orders
#
#  id            :integer          not null, primary key
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  buyer_user_id :integer          not null
#  product_id    :integer          not null
#
# Indexes
#
#  index_orders_on_buyer_user_id  (buyer_user_id)
#  index_orders_on_product_id     (product_id)
#
# Foreign Keys
#
#  fk_rails_...  (buyer_user_id => users.id)
#  fk_rails_...  (product_id => products.id)
#
class Order < ApplicationRecord
  belongs_to :buyer_user, class_name: "User", foreign_key: "buyer_user_id"
  belongs_to :product
end
