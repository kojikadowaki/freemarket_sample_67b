# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  ancestry   :string(255)
#  name       :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_categories_on_ancestry  (ancestry)
#
class Category < ApplicationRecord
  has_ancestry
  has_many :products, dependent: :destroy
  has_many :sizes, through: :category_sizes
  has_many :category_sizes, dependent: :destroy
  
  # 自己結合モデル
  belongs_to :parent, class_name: :Category, optional: true
  has_many :children, class_name: :Category, foreign_key: :ancestry
end
