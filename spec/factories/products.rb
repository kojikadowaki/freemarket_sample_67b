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
FactoryBot.define do
  factory :product do
    id                    {1}
    name                  {"ONE PICE"}
    description           {"面白い"}
    price                 {"450"}
    derivery_day_id       {"1"}
    derivery_fee_payer_id {"1"}
    derivery_method_id    {"1"}
    product_condition_id  {"1"}
    product_status_id     {"1"}
    ship_from_location_id {"1"}
    size_id               {"5"}
    category_id           {7851}
    brand                 {"ジャンプ"}
    category
    association :user, factory: :user
    after(:build) do |product|                          
      product.product_images << build(:product_image, product: product)
    end
  end

  factory :product_without_images, class: Product do
    id                    {1}
    name                  {"ONE PICE"}
    description           {"面白い"}
    price                 {"450"}
    derivery_day_id       {"1"}
    derivery_fee_payer_id {"1"}
    derivery_method_id    {"1"}
    product_condition_id  {"1"}
    product_status_id     {"1"}
    ship_from_location_id {"1"}
    size_id               {"5"}
    category_id           {7851}
    brand                 {"ジャンプ"}
    category
    association :user, factory: :user
    after(:build) do |product|                          
      product.product_images << []
    end
  end
end
