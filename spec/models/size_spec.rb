# == Schema Information
#
# Table name: sizes
#
#  id         :integer          not null, primary key
#  ancestry   :string(255)
#  size       :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_sizes_on_ancestry  (ancestry)
#
require 'rails_helper'

describe Size do
  describe 'インスタンスメソッド: group_listに関するテストケース' do
    it 'インスタンスのancestryと一致する一覧を返す' do
      ancestry = '1'
      expect(Size.find_by(ancestry: ancestry).group_list).to eq(Size.where(ancestry: ancestry))
    end
  end
end
