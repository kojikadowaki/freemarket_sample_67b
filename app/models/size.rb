# == Schema Information
#
# Table name: sizes
#
#  id         :integer          not null, primary key
#  ancestry   :string(255)
#  size       :string(255)      default("")
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_sizes_on_ancestry  (ancestry)
#
class Size < ApplicationRecord
  has_many :products
  has_many :categories, through: :category_sizes
  has_many :category_sizes
  has_ancestry

  def group_list
    Size.where(ancestry: self.ancestry)
  end
end
