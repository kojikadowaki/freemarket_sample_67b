# == Schema Information
#
# Table name: product_images
#
#  id         :integer          not null, primary key
#  url        :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  product_id :integer
#
# Indexes
#
#  index_product_images_on_product_id  (product_id)
#
# Foreign Keys
#
#  fk_rails_...  (product_id => products.id)
#
class ProductImage < ApplicationRecord
  belongs_to :product
end
