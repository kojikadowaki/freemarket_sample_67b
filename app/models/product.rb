# == Schema Information
#
# Table name: products
#
#  id                :integer          not null, primary key
#  bland             :string(255)
#  name              :string(255)
#  price             :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  product_status_id :integer
#
class Product < ApplicationRecord
  has_many :product_images, dependent: :destroy
end
