# == Schema Information
#
# Table name: products
#
#  id                    :integer          not null, primary key
#  brand                 :string(255)
#  description           :text(65535)      not null
#  name                  :string(255)      not null
#  price                 :integer          not null
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  category_id           :integer
#  derivery_day_id       :integer
#  derivery_fee_payer_id :integer
#  derivery_method_id    :integer          not null
#  product_condition_id  :integer
#  product_status_id     :integer          not null
#  ship_from_location_id :integer
#  size_id               :integer          not null
#  user_id               :integer
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
require 'rails_helper'

RSpec.describe Product, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
