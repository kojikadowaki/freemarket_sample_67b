class Category < ApplicationRecord
  has_ancestry
  has_many :products, dependent: :destroy
  has_many :sizes, through: :category_sizes
  has_many :category_sizes, dependent: :destroy

end
