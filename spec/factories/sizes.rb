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
FactoryBot.define do
  factory :size do
    size { 'Sサイズ' }
  end
end
