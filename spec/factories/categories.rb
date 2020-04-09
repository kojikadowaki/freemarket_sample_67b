# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  ancestry   :string(255)      not null
#  name       :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :category do
    
  end
end
