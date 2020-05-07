# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  ancestry   :string(255)
#  name       :string(255)      default("")
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_categories_on_ancestry  (ancestry)
#
require 'rails_helper'

describe Category do
  describe 'インスタンスメソッド: group_listに関するテストケース' do
    it 'インスタンスのancestryと一致する一覧を返す' do
      ancestry = '1'
      expect(Category.find_by(ancestry: ancestry).group_list).to eq(Category.where(ancestry: ancestry))
    end
  end
end
